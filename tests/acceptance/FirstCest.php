<?php 

class FirstCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests

    protected function login(AcceptanceTester $I)
    {
        $I->amOnPage('/wp-admin');
        $I->fillField('#user_login', 'admin');
        $I->fillField('#user_pass', '12345');
        $I->click('form #wp-submit');

    }
    /**
     * @before login
     */
    public function addComment(AcceptanceTester $I)
    {
        $I->amOnPage('/?p=1');
        $I->fillField('#comment', 'nice!');
        $I->click('.form-submit #submit');
        $I->see('nice!');
    }
    /**
     * @before addComment
     */
    public function allUser(AcceptanceTester $I)
    {
        $I->seeInDatabase('wp_comments',     [
            'comment_author' => 'admin',
            'comment_content' => 'nice!',
        ]);
    }

}

