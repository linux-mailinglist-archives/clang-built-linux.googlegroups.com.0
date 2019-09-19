Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSMSR3WAKGQEUL5WFII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A1B7B52
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 15:57:30 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id p14sf1016944ljh.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 06:57:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568901450; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOgCWrPv37zIAQS66eaQCxAqA43uswFGNwRyOj/7ebWXt8CADtMN40PRfRKEM10Zgf
         X09Tpvlbi6ITNW+HzBOisgP3nPvjd8otskq8/wTZuAhSK/RlRq+RTCk6PmvRY/o9Qj+0
         sIvk2g7mOLflxJxu3oQxtqm+hfgdn8mjNQlqgzdSCGMDZ7zjPX8/WSspTI0lhP4QD8BW
         eD2Ub8lGhF9Hl14hpSTmmJA9/GgnWfen69NnlX6jCVYNZ2gnrkp7r/xRSKyrKs5F2ulC
         ZgnrxkXF3al0avrLnwY/m0Kr2NI2dwvQPIwMndunE22guF3t6aszz5guXKrwyod+/pfs
         /eCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MztodrbX56vTllovNd4s9KegVh1Q64cDjEzqj/3j8Go=;
        b=pz6nQ9e4fRYQhLKKVY+8a7doRYhH6Tjg4oSOyyKtTOrwjr2x1cVhnC4JA/MBiVn4Yn
         Ls3Lykj3zQqd1uQrQQdCkocDKnRzLBP9RHnkZbDyv+LDLMph7ujl0V0PuPammkGY45rm
         Nf6FHkopX3LLGW5IR4RWSqS6k1tkgRhochJDtlXPdPin2k1B63V6QKt0O9JrkXv92qPu
         CrLRa81fOcxyIZiMJNyVW2F+agUlTBJ+ouPz8c5NQYR/yj9igm9jIjrghhuMoK8c1DL8
         u0QaRZHrBbtnNLEBSFBf+1WmBfqrHRfdJ6LFzfo8JJVwY00hvBOxDslg4nZncpPRhsDy
         +8LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MztodrbX56vTllovNd4s9KegVh1Q64cDjEzqj/3j8Go=;
        b=Q6o5NXtz18kXx6gbUT6g68qEC75v1v2bOkMGV/e1EJ8q2eTy+0D9zr1RdXMXF6GiYF
         eYXUCc00zDWvW2qeWBqN9CrfFeslcCbAMt2cd2EbFnWEToWRJ74T0Q4q7JZjQvo6WYUT
         SqbXDjzSbpZekeOO1Ibgz54tvwLfhpdk7KhsOzKt/7KXNYcHG/x7KhnMprulJc7gaztP
         6MxvQQtMeqzaZnIY8u+Fq4GopP5vsfPiwZ4asDbgZp3THMq09TPZyqWpLz9TH7YLQrf3
         jwKMYresj/UjgspJkjQZnPZrZIhfrSB3qDg8vTjoMZqAOBtMkkVgDRfz2yWYpbOUDKIX
         PptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MztodrbX56vTllovNd4s9KegVh1Q64cDjEzqj/3j8Go=;
        b=CtO1XYkhhNcRfEzjxnfAQvHsFFDTBIVOJLMpBchq9BHExzTrwipLqRjvaV0kO/Mv2n
         pG3OdpRVzYnH/Y1+oxxQMyENmgXEiwOtQjUBoIwTAaEI+ALD8QKUvJqy7niDKEkKHoPw
         xTcOpcuhYd68SoSxI72vevmFaQv4wscleZIHN4eFvcBoqdNW4U3EU3+NzqffjtbtQNV8
         epWvXAYpjIukDyHoyalow7BQXq23NDb1k1ekuHl7fwSJlT9Tocgi8x1CS7aJBJ0DQjVy
         nH6yOo2T5VDZ5PI60yGIo/4sibxXAH0vg7fxOqdXbE9JJr4Ym02NDxlQZvcsSbM1K7+w
         PAmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCVMb9J+3YcBeh3gjRB3cTScvko+uxbYEI8CqZ2s9vXRMglu0r
	Hg4UF/NgiUy0WVttjWxLwmo=
X-Google-Smtp-Source: APXvYqzv/mUG6emL3svJse8IIfvcrLP+8f1UEPDU6OzfhNWBmXJDSdEw6tUreNm5Kp9ogKQhd/RvmA==
X-Received: by 2002:a2e:88d4:: with SMTP id a20mr5522479ljk.201.1568901450025;
        Thu, 19 Sep 2019 06:57:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9246:: with SMTP id v6ls562276ljg.6.gmail; Thu, 19 Sep
 2019 06:57:29 -0700 (PDT)
X-Received: by 2002:a2e:b4c4:: with SMTP id r4mr5619839ljm.69.1568901449512;
        Thu, 19 Sep 2019 06:57:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568901449; cv=none;
        d=google.com; s=arc-20160816;
        b=lODbCGbdCGvG59hb8qJ8fX0b3CBTAOOnh2jMvv6wLH0etrBedUDJQpcJ2gRbA5tWte
         LQJFZD1ITvzUj0x8Fbz9qrj+vBO3xfUAk87+YXK9jTxSuh3TKVPHSj8mJwYRZ+x0GWbz
         uqBRLNkkqJK/3h5jYdGdNNMTuBeNQAhTwsa83VcPBT6E6RMNQ54hckT5M9IeqK96T/yn
         ab9sUs3wXukiysR5NSqIwrsik48QWUIeNWzr5r4c9YIA7CLAX6ADvMNLQDwnGobbwRKa
         EzjSRJH0CIHP7P/iYb1oHlMaUQIrdEaT7WEauMyRJ1Vc0A+wJU2VEMNguSlai5y7qB0y
         PF5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=28CikTRyid/xH6JejQu935ygXEFfNaTe6SWPgWXNO9s=;
        b=nDsycf7roVRnehkIWXdE9jFZZlQD8jS2T2RA5iCQ1Ht1/7yTyn4rK8g3+AGFHrDAbf
         6xGAk+O3hrY/XusKbry1B4KpVt09WXqAOrarlQWDXUdlDHRzj3zlCh+j3kuBLxqxqVII
         mu62gClaokBUrqhZhChZcgthYv0KuO4VjxccV3MAMyCQ8c3POqk1xvyINCSFTKHXmsPL
         /Zlf2gPoEoJSENyXXnTpI8dxQoTzTuNiussHwujoiNpYKU/iphs9lHkjMFt47/bN6CfG
         N+svU9+NNV3q6CdLeiAyUI0uWffixv9j4rbdNrxzlPxgFklpu/BgicNvYzQu3qpK2jKx
         gV1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id c8si684053lfm.4.2019.09.19.06.57.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 06:57:29 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MgwBv-1hj3F420FB-00hMbl; Thu, 19 Sep 2019 15:57:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Max Gurtovoy <maxg@mellanox.com>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] block: t10-pi: fix -Wswitch warning
Date: Thu, 19 Sep 2019 15:57:19 +0200
Message-Id: <20190919135725.1287963-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:tN+XsyXJdHFnCMzPxDFyb2EBaVVp1Ivx2u5rxFBl8O1rODBEDdc
 2hdSU18cmnE1oADZvswr6ov0IvJhK4PJ3oQytoaedrt4HErtAJstzaERKzuZLIsVTvNQDtk
 MfHohPUVH457DDV34tAXV7jci0NIoFYd8ff9+pWhQMC9cORkOyXB/FePCN+chvUfRGco8JE
 l2dmid2zR9cFKxtAi1wvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PpQaXfdWnT0=:y8V8FK+UtJq3wztlx/VtDA
 jj8iXXuPCb+8dqOo2iliOmpthow8uIC9XPEx+E+Himl+CVCdfdP1XhFgpZQvCtu2exravP8or
 6MTI68uzb3UdUxN9gvUwz+mhwnDO6ih/CmfwFrXai/oJu17MXNwf42utsidpvcP90ljXebSXj
 DhQW//YvpbMGAuQZ8qxvJrMnquZmnwqXr1Y94dSd990E+4jAc2dSskPqUlQRPnGfI4McpTsO5
 qxRwuXWTBi1V5hh2wf5yzXTQuJ6tt0JbcCX1uffctTx0OAef5XdIe+hwj8s/Rk5w8OKikGsz5
 stIb76l8Vs0y5M3Do8hwDlRaG098jIAXSISlgqy16Bq8VAiUsL5N0qxKj1zrafcPVHasSbz0v
 OKuI0sloaWE6j8LHdP8uRnNLqcPs7IXBQoYK4K+NZZe8s9ytFACuItItmR29D1uDZ/gqkcYTN
 aeHj26hLt1DR8xyDBwCpf3zGNxQLy+lzkROnt+X+EOu5zfjnu0Tzo3hJamuAZ1tPee+WO0Hy0
 J2nhenYRyhUGyYYKNYqJmDj55J95j3iA3/wx5FmcL4ZY3glim165FXHu+eVfp3AchjV2DJarg
 HppSTRquBBxSRFMKQDdiyezsWhmC4u3Eqbm4eJrC99vLBdRzTNgvldrqRlL8v68qv1cY2+e2S
 1HIIDUV9yQTqL0bju2M2H4TNqZHBzr7pGBofabq+IKg+rZMzmesVAaVBAuFfEYAxrKk2ItSG3
 3TzoCv5I/HJgEpHbXYmwj/4b5/P+D+Y16pBsUugZJjx6llQ+FyiRT6t6jxoVgTgp9a28v1t20
 gv/ag0HjpdgKqVxN733GTt6FFmAfYkBQ95nBqz4HywIUwP2DcfR0pwDTmR3z/S6eOjDtre1lC
 BEdEHyy85AO+1+gjiQnQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Changing the switch() statement to symbolic constants made
the compiler (at least clang-9, did not check gcc) notice that
there is one enum value that is not handled here:

block/t10-pi.c:62:11: error: enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch [-Werror,-Wswitch]

Add another case for the missing value and do nothing there
based on the assumption that the code was working correctly
already.

Fixes: 9b2061b1a262 ("block: use symbolic constants for t10_pi type")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 block/t10-pi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/block/t10-pi.c b/block/t10-pi.c
index 0c0120a672f9..055fac923946 100644
--- a/block/t10-pi.c
+++ b/block/t10-pi.c
@@ -60,6 +60,8 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
 		__be16 csum;
 
 		switch (type) {
+		case T10_PI_TYPE0_PROTECTION:
+			break;
 		case T10_PI_TYPE1_PROTECTION:
 		case T10_PI_TYPE2_PROTECTION:
 			if (pi->app_tag == T10_PI_APP_ESCAPE)
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919135725.1287963-1-arnd%40arndb.de.
