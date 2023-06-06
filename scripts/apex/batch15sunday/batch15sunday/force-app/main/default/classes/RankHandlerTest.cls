@isTest
public class RankHandlerTest {
    @isTest
    private static void testRankPrize() {
        RankHandler rh = new RankHandler();
        assert.areEqual('Gold', rh.rankPrize(1));
        assert.areEqual('Silver', rh.rankPrize(2));
        assert.areEqual('Bronze', rh.rankPrize(3));
        assert.areEqual('Top 10', rh.rankPrize(7));
        assert.areEqual('Participation certificate', rh.rankPrize(11));
    }

    @isTest
    private static void testRankPrizeSwitch() {
        RankHandler rh = new RankHandler();
        assert.areEqual('Gold', rh.rankPrizeSwitch(1));
        assert.areEqual('Silver', rh.rankPrizeSwitch(2));
        assert.areEqual('Bronze', rh.rankPrizeSwitch(3));
        assert.areEqual('Top 10', rh.rankPrizeSwitch(7));
        assert.areEqual('thank you for participating', rh.rankPrizeSwitch(11));
    }

}