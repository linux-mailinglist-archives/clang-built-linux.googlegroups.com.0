Return-Path: <clang-built-linux+bncBDY3NC743AGBBHHIYPVAKGQEUQKVRXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8716A89696
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 07:07:41 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id k22sf1805182otn.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:07:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565586460; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kb5ZG7ThJcbQna4s6Db9/ro39dER3gdIZm78UGtc6tjjfruiDukgimhqryAvbHY/X0
         llWBCiAIfLiKMV9hyLcIvlNd/CH+kK7Zozc6+GG05tifs62HgVXKpy4M36AEG0CwBHQM
         secbLBZzt0nAQiyODHZXADbyr17ExH1ZvK6CZP+AuhEMjGIa9TfZh2hQPsU0++jbH1Y6
         hjI6u6QuUo5KYju6K+kWs9j2hy+adxxhq/fLI6tTjoefGQPI0xWf2AABGYKDxtkQd1UV
         T6NI6ELjQhCeoySC0ZXJG49IpOjQAf7xPcB+GUf4iaOzn/87jiU926ehQUBZrkkqg2+R
         Cdbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=2sU9Hy+0eOTWREARP61iuS7P+gd31+90wJkz2H3sEkE=;
        b=PJBfgxZXUPH7zxmmTJaZES4FgNwfgRRdQOqv4X3aidHplmdRJIKO+s5ajMzSLclMC1
         4Rss4FVT3mPcM0wEvLEJnE+THSmV36cCkkZauRk43sjTVtUsJ+35G2cBfPKk5VZGo7QG
         ievntTnqMNbU6vv5QjwE0OJaYaG7HRcL2Xa/alEm2/n5fapEN4yPBCFi6JsSTGhWPHfT
         u7KJjA/3oOqeGuhRg79oQYHcw2+JBduKy2FSEYshRM5YV1jON9+ZyKNhfBLc7KPaFCI+
         MKMU4sEvEGzxWe827qRKj+OFbdCUOD0yTIuKk8ewkWsPOFC0LJPOI1SceqEWHY9qt1PM
         uzWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2sU9Hy+0eOTWREARP61iuS7P+gd31+90wJkz2H3sEkE=;
        b=FR06/TudsC7LK+2EETbx1u26SiTY87k5RVE9vUhPiwd0cUV+G0+CZt4K9zHvg5DiwX
         cQrINkrWYwIHQ9kJTHhDlvIYKEXeCSWqEJgp+txO5O0JM5rXlv8mF1v1zLMTSe+HDTLP
         pPFPcMl9yM2MhadFY9iPDFsnlaT66RW4B5dAKWq50juggI3x8TiZdA6of0uOldnWvQqq
         prE8jKVb9kIK3PtFcZ8CV8j1YY2Lk/C4e0ODJt5+/yjQytrZLdZRMU2jC6WxIi9XWrC5
         LR0jm5AzqD7PW2yLhoIiVUKsMkhKmvou+IPCKgQCmgY0RIGor9Hli5rkczdqpibbtwq9
         Nf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sU9Hy+0eOTWREARP61iuS7P+gd31+90wJkz2H3sEkE=;
        b=OWvnWjuaXWWKMhUF0so7iFORS9W2SlncUzWIlN0gDRX7JWMn+IEuPEBtCnpbu/XGAx
         gtdpDdWVt7R3gciLptsGHSreN0A7z34BuEiE7fAaYDOucsm66zC2Z5hbZl7OQVbpFro1
         fM4eKedIEfv97hTWhx3meSNrcbpxZPTETIwWpZDcmkjQ1g4MJ4Ev0PKh4Rs0I1t7UFgV
         AFv2gkNHGf9/aD8Wtl+/MK+4T3erAIK1J8r86zOzMF7ORMEfw3pyP993E7YLBRVZMK0S
         OxfSrL2dTjUrm2t1bdbOjCcAJcmM9V3riBnCffeVheGA2KReXOWCjSP7HzDLUdG3UfsK
         lCwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUObb5kM5sGHybM5XORnZ2RKvI17a36D1at6xYY0KEa8ng4sKdR
	d+IDIJswu5MUnTGPkrEdP0o=
X-Google-Smtp-Source: APXvYqxJzDhe6OS+dMlT86pq2DHRITOJfz3IXDC60sNZi9vCW6d6xt0RcvORU0+ONZqlArMrrUqjWg==
X-Received: by 2002:a9d:6f9a:: with SMTP id h26mr26931020otq.211.1565586460266;
        Sun, 11 Aug 2019 22:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc93:: with SMTP id a141ls272872oii.10.gmail; Sun, 11
 Aug 2019 22:07:39 -0700 (PDT)
X-Received: by 2002:aca:d405:: with SMTP id l5mr5196312oig.46.1565586459852;
        Sun, 11 Aug 2019 22:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565586459; cv=none;
        d=google.com; s=arc-20160816;
        b=0iTpvqQqt+aeAS/KVjxvp2ftjm7HvC4M7zfan1m7Rus598MwBvJVr6PdXqjgb7DMSf
         lqSO3XmwflAqm1fN57He2+y0nftrwJxUPmiRUAGCQ6JjNf/pxI6Fb4/IkTRSx/kU6zJH
         v0EO3e+GE4VmyEhNqeMtCaU4wDCbK06FCw3ZmM5FmwPGEp8co7ppFwVgK07QDmk5bb7+
         h+VJOeeaUS/AkcoMy7tD8He1Ts4Uqi8dQDgwI/EIdeMUs5is2lr0FPYyzEk2lbfArIaU
         CVfjLRe7KKn/YcWVLadVqQFxdA3zz6lEIRKiCUDee/w1UH0L1QBkyLQubc0vzMQM1zm4
         y4Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=T/5F6LlQ7iHIjaZUIiXmNDXgiDX2QKDu+aY9nsYkxHg=;
        b=OEjTVQUDm6uSQ6B19gJTeK1ejC2MNvz4/3gmbxpKOeEMHjOXfSPBplb1QkNKzs6xRk
         un2qBI06N0cFwiJgXR80lUe769SGsRefQlw2TWc94mGzWTj90AcNaCkuViEAx1YEA+bs
         KPUJ22mJEleMvaodJJUW1Ipeu+jaqcD5tgXxcOvVKQ8nXRhecVYjQrlVZe6tQN1TdUL/
         1j5+DuYFEMQTu2npxCDG4eqf/n24ydG/rXx1yuAxLGDwtUGnqpnKbXpAkXEX6Zx9lF7X
         UCVD7X+FrbnCdUrob7f/rYvNkWbJgTpUDDsZ4DMbsXzXYj/W9KRheiRgEQ0V6DczKLS0
         zkHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0131.hostedemail.com. [216.40.44.131])
        by gmr-mx.google.com with ESMTPS id n27si5061901otj.1.2019.08.11.22.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 22:07:39 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.131;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 05E9C45D8;
	Mon, 12 Aug 2019 05:07:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:69:327:355:379:599:871:960:973:982:988:989:1000:1260:1313:1314:1345:1359:1437:1516:1518:1575:1594:1605:1730:1747:1764:1777:1792:1981:2194:2198:2199:2200:2393:2553:2559:2562:2638:2692:2693:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3871:3872:3873:3874:4321:4641:5007:6119:6506:6747:6748:7281:7398:7903:8957:9592:10004:10848:11026:11232:11604:11658:11914:12043:12114:12291:12296:12297:12438:12555:12663:12679:12683:12740:12895:12986:13161:13229:13255:13439:14096:14659:21080:21222:21433:21611:21627:21740:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: hall50_429287b51a132
X-Filterd-Recvd-Size: 42988
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Mon, 12 Aug 2019 05:07:37 +0000 (UTC)
Message-ID: <61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
	 <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Date: Sun, 11 Aug 2019 22:07:35 -0700
In-Reply-To: <0c96ff086dc1b92034a8ca19d341f2db16cc802c.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
	 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
	 <20190811031715.GA22334@archlinux-threadripper>
	 <0c96ff086dc1b92034a8ca19d341f2db16cc802c.camel@perches.com>
Content-Type: multipart/mixed; boundary="=-yd8fF1lRo2b7TA6SqCCx"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.131 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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


--=-yd8fF1lRo2b7TA6SqCCx
Content-Type: text/plain; charset="UTF-8"

On Sat, 2019-08-10 at 20:54 -0700, Joe Perches wrote:
> On Sat, 2019-08-10 at 20:17 -0700, Nathan Chancellor wrote:
> > On Sat, Aug 10, 2019 at 08:06:05PM -0700, Joe Perches wrote:
> > > On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> > > > On a tangential note, how are you planning on doing the fallthrough
> > > > comment to attribute conversion? The reason I ask is clang does not
> > > > support the comment annotations, meaning that when Nathan Huckleberry's
> > > > patch is applied to clang (which has been accepted [1]), we are going
> > > > to get slammed by the warnings. I just ran an x86 defconfig build at
> > > > 296d05cb0d3c with his patch applied and I see 27673 instances of this
> > > > warning... (mostly coming from some header files so nothing crazy but it
> > > > will be super noisy).
> > > > 
> > > > If you have something to share like a script or patch, I'd be happy to
> > > > test it locally.
[]
> Coccinelle doesn't support transforming comments
> so I am using a perl script for those transforms
> that I will post when I'm happy enough with it.

Well, it kinda works well enough.

Several things still need improvement but
try this with command lines like:

$ git ls-files <some_path> | \
  xargs perl cvt_style.pl -o --convert=fallthrough

For instance:

$ git ls-files crypto | xargs perl cvt_style.pl -o --convert=fallthrough
Converted crypto/drbg.c
1	fallthrough
Converted crypto/tcrypt.c
57	fallthrough

Warning: these changes may not be correct.

These changes should be carefully reviewed manually and not combined with
any functional changes.

Compile, build and test your changes.

You should understand and be responsible for all object changes.

Make sure you read Documentation/SubmittingPatches before sending
any changes to reviewers, maintainers or mailing lists.
---

That command line creates:
---
$ git diff --stat -p crypto/
 crypto/drbg.c   |   3 +-
 crypto/tcrypt.c | 114 ++++++++++++++++++++++++++++----------------------------
 2 files changed, 58 insertions(+), 59 deletions(-)

diff --git a/crypto/drbg.c b/crypto/drbg.c
index b6929eb5f565..cd7eef227ff8 100644
--- a/crypto/drbg.c
+++ b/crypto/drbg.c
@@ -1505,8 +1505,7 @@ static int drbg_prepare_hrng(struct drbg_state *drbg)
 
 	case -EALREADY:
 		err = 0;
-		/* fall through */
-
+		fallthrough;
 	default:
 		drbg->random_ready.func = NULL;
 		return err;
diff --git a/crypto/tcrypt.c b/crypto/tcrypt.c
index c578ccd92c57..f236c057dd9f 100644
--- a/crypto/tcrypt.c
+++ b/crypto/tcrypt.c
@@ -2339,121 +2339,121 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 			test_hash_speed(alg, sec, generic_hash_speed_template);
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	case 301:
 		test_hash_speed("md4", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 302:
 		test_hash_speed("md5", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 303:
 		test_hash_speed("sha1", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 304:
 		test_hash_speed("sha256", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 305:
 		test_hash_speed("sha384", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 306:
 		test_hash_speed("sha512", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 307:
 		test_hash_speed("wp256", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 308:
 		test_hash_speed("wp384", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 309:
 		test_hash_speed("wp512", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 310:
 		test_hash_speed("tgr128", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 311:
 		test_hash_speed("tgr160", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 312:
 		test_hash_speed("tgr192", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 313:
 		test_hash_speed("sha224", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 314:
 		test_hash_speed("rmd128", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 315:
 		test_hash_speed("rmd160", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 316:
 		test_hash_speed("rmd256", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 317:
 		test_hash_speed("rmd320", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 318:
 		test_hash_speed("ghash-generic", sec, hash_speed_template_16);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 319:
 		test_hash_speed("crc32c", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 320:
 		test_hash_speed("crct10dif", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 321:
 		test_hash_speed("poly1305", sec, poly1305_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 322:
 		test_hash_speed("sha3-224", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 323:
 		test_hash_speed("sha3-256", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 324:
 		test_hash_speed("sha3-384", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 325:
 		test_hash_speed("sha3-512", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 326:
 		test_hash_speed("sm3", sec, generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 327:
 		test_hash_speed("streebog256", sec,
 				generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 328:
 		test_hash_speed("streebog512", sec,
 				generic_hash_speed_template);
 		if (mode > 300 && mode < 400) break;
-		/* fall through */
+		fallthrough;
 	case 399:
 		break;
 
@@ -2462,121 +2462,121 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 			test_ahash_speed(alg, sec, generic_hash_speed_template);
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	case 401:
 		test_ahash_speed("md4", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 402:
 		test_ahash_speed("md5", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 403:
 		test_ahash_speed("sha1", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 404:
 		test_ahash_speed("sha256", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 405:
 		test_ahash_speed("sha384", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 406:
 		test_ahash_speed("sha512", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 407:
 		test_ahash_speed("wp256", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 408:
 		test_ahash_speed("wp384", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 409:
 		test_ahash_speed("wp512", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 410:
 		test_ahash_speed("tgr128", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 411:
 		test_ahash_speed("tgr160", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 412:
 		test_ahash_speed("tgr192", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 413:
 		test_ahash_speed("sha224", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 414:
 		test_ahash_speed("rmd128", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 415:
 		test_ahash_speed("rmd160", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 416:
 		test_ahash_speed("rmd256", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 417:
 		test_ahash_speed("rmd320", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 418:
 		test_ahash_speed("sha3-224", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 419:
 		test_ahash_speed("sha3-256", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 420:
 		test_ahash_speed("sha3-384", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 421:
 		test_ahash_speed("sha3-512", sec, generic_hash_speed_template);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 422:
 		test_mb_ahash_speed("sha1", sec, generic_hash_speed_template,
 				    num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 423:
 		test_mb_ahash_speed("sha256", sec, generic_hash_speed_template,
 				    num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 424:
 		test_mb_ahash_speed("sha512", sec, generic_hash_speed_template,
 				    num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 425:
 		test_mb_ahash_speed("sm3", sec, generic_hash_speed_template,
 				    num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 426:
 		test_mb_ahash_speed("streebog256", sec,
 				    generic_hash_speed_template, num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 427:
 		test_mb_ahash_speed("streebog512", sec,
 				    generic_hash_speed_template, num_mb);
 		if (mode > 400 && mode < 500) break;
-		/* fall through */
+		fallthrough;
 	case 499:
 		break;
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel%40perches.com.

--=-yd8fF1lRo2b7TA6SqCCx
Content-Type: application/x-perl; name="cvt_style.pl"
Content-Disposition: attachment; filename="cvt_style.pl"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9wZXJsIC13CgojIENoYW5nZSBzb21lIHN0eWxlIGVsZW1lbnRzIG9mIGEgc291
cmNlIGZpbGUKIyBBbiBpbXBlcmZlY3Qgc291cmNlIGNvZGUgZm9ybWF0dGVyLgojIE1pZ2h0IG1h
a2UgdHJpdmlhbCBwYXRjaGVzIGEgYml0IGVhc2llci4KIwojIHVzYWdlOiBwZXJsIHNjcmlwdHMv
Y3Z0X2tlcm5lbF9zdHlsZS5wbCA8ZmlsZXM+CiMKIyBMaWNlbnNlZCB1bmRlciB0aGUgdGVybXMg
b2YgdGhlIEdOVSBHUEwgTGljZW5zZSB2ZXJzaW9uIDIKCnVzZSBzdHJpY3Q7CnVzZSBHZXRvcHQ6
OkxvbmcgcXcoOmNvbmZpZyBub19hdXRvX2FiYnJldik7CgpteSAkUCA9ICQwOwpteSAkViA9ICcw
LjMnOwoKbXkgJHNvdXJjZV9pbmRlbnQgPSA4OwpteSAkcXVpZXQgPSAwOwpteSAkc3RhdHMgPSAx
OwpteSAkb3ZlcndyaXRlID0gMDsKbXkgJG1vZGlmaWVkID0gMDsKbXkgJHN1ZmZpeCA9ICIuc3R5
bGUiOwpteSAkY29udmVydF9vcHRpb25zID0gIiI7Cm15ICRicm9rZW4gPSAwOwoKbXkgQHN0ZF9v
cHRpb25zID0gKAogICAgImFsbCIsCiAgICAicHJpbnRrX3RvX3ByX2xldmVsIiwKICAgICJwcmlu
dGtfS0VSTl9ERUJVR190b19wcl9kZWJ1ZyIsCiAgICAiZGV2X3ByaW50a190b19kZXZfbGV2ZWwi
LAogICAgImRldl9wcmludGtfS0VSTl9ERUJVR190b19kZXZfZGJnIiwKICAgICJzZGV2X3ByaW50
a190b19zZGV2X2xldmVsIiwKICAgICJzZGV2X3ByaW50a19LRVJOX0RFQlVHX3RvX3NkZXZfZGJn
IiwKICAgICJjb2FsZXNjZV9mb3JtYXRzIiwKICAgICJjdWRkbGVfb3Blbl9icmFjZSIsCiAgICAi
Y3VkZGxlX2Vsc2UiLAogICAgImRlcGFyZW50aGVzaXplX3JldHVybnMiLAogICAgInNwYWNlX2Fm
dGVyX0tFUk5fbGV2ZWwiLAogICAgInNwYWNlX2FmdGVyX2lmX3doaWxlX2Zvcl9zd2l0Y2giLAog
ICAgInNwYWNlX2FmdGVyX2Zvcl9zZW1pY29sb25zIiwKICAgICJzcGFjZV9hZnRlcl9jb21tYSIs
CiAgICAic3BhY2VfYmVmb3JlX3BvaW50ZXIiLAogICAgInNwYWNlX2Fyb3VuZF90cmlncmFwaCIs
CiAgICAibGVhZGluZ19zcGFjZXNfdG9fdGFicyIsCiAgICAiY29hbGVzY2Vfc2VtaWNvbG9ucyIs
CiAgICAicmVtb3ZlX3RyYWlsaW5nX3doaXRlc3BhY2UiLAogICAgInJlbW92ZV93aGl0ZXNwYWNl
X2JlZm9yZV9xdW90ZWRfbmV3bGluZSIsCiAgICAicmVtb3ZlX3doaXRlc3BhY2VfYmVmb3JlX3Ry
YWlsaW5nX3NlbWljb2xvbiIsCiAgICAicmVtb3ZlX3doaXRlc3BhY2VfYmVmb3JlX2JyYWNrZXQi
LAogICAgInJlbW92ZV9wYXJlbnRoZXNpc193aGl0ZXNwYWNlIiwKICAgICJyZW1vdmVfc2luZ2xl
X3N0YXRlbWVudF9icmFjZXMiLAogICAgInJlbW92ZV93aGl0ZXNwYWNlX2FmdGVyX2Nhc3QiLAog
ICAgImhvaXN0X2Fzc2lnbnNfZnJvbV9pZiIsCiAgICAiY29udmVydF9jOTlfY29tbWVudHMiLAog
ICAgInJlbW92ZV9wcml2YXRlX2RhdGFfY2FzdHMiLAogICAgInJlbW92ZV9zdGF0aWNfaW5pdGlh
bGl6YXRpb25zX3RvXzAiLAogICAgInJlbW92ZV90cnVlX2ZhbHNlX2NvbXBhcmlzb25zIiwKICAg
ICJyZW1vdmVfTlVMTF9jb21wYXJpc29ucyIsCiAgICAicmVtb3ZlX3RyYWlsaW5nX2lmX3NlbWlj
b2xvbnMiLAogICAgIm5ldHdvcmtfY29tbWVudHMiLAogICAgInJlbW92ZV9zd2l0Y2hmb3J3aGls
ZWlmX3NlbWljb2xvbnMiLAogICAgImRldGFiX2Vsc2VfcmV0dXJuIiwKICAgICJyZW1vdmVfd2hp
bGVfd2hpbGUiLAogICAgImZhbGx0aHJvdWdoIiwKKTsKCm15IEBvdGhlcl9vcHRpb25zID0gKAog
ICAgIm1vdmVfbGFiZWxzX3RvX2NvbHVtbl8xIiwKICAgICJzcGFjZV9hcm91bmRfbG9naWNhbF90
ZXN0cyIsCiAgICAic3BhY2VfYXJvdW5kX2Fzc2lnbiIsCiAgICAic3BhY2VfYXJvdW5kX2FyaXRo
bWV0aWMiLAogICAgIkNhbWVsQ2FzZV90b19jYW1lbF9jYXNlIgopOwoKbXkgJHZlcnNpb24gPSAw
OwpteSAkaGVscCA9IDA7CgpteSAkbG9nRnVuY3Rpb25zID0gcXJ7KD94OgoJcHJpbnRrfAoJKFth
LXowLTlfXSspXyhkZWJ1Z3xkYmd8dmRiZ3xkZXZlbHxpbmZvfHdhcm58d2FybmluZ3xlcnJ8bm90
aWNlfGFsZXJ0fGNyaXR8ZW1lcmd8Y29udCl8CglXQVJOfAoJcGFuaWMKKX07CgpteSAkbWF0Y2hf
YmFsYW5jZWRfcGFyZW50aGVzZXMgPSBxci8oXCgoPzpbXlwoXCldKyt8KD8tMSkpKlwpKS87Cm15
ICRtYXRjaF9iYWxhbmNlZF9icmFjZXMgICAgICA9IHFyLyhceyg/OlteXHtcfV0rK3woPy0xKSkq
XH0pLzsKbXkgJGRvX2N2dDsKCm15ICVoYXNoOwoKc3ViIHNldF9hbGxfb3B0aW9ucyB7CiAgICBt
eSAoJGVuYWJsZWQpID0gQF87CgogICAgZm9yZWFjaCBteSAkb3B0IChAc3RkX29wdGlvbnMpIHsK
CSRoYXNoeyRvcHR9ID0gJGVuYWJsZWQ7CiAgICB9CgogICAgaWYgKCRicm9rZW4gPiAwIHx8ICRl
bmFibGVkID09IC0xKSB7Cglmb3JlYWNoIG15ICRvcHQgKEBvdGhlcl9vcHRpb25zKSB7CgkgICAg
JGhhc2h7JG9wdH0gPSAkZW5hYmxlZDsKCX0KICAgIH0KCn0KCmlmICghR2V0T3B0aW9ucygKCQkn
c291cmNlLWluZGVudD1pJyA9PiBcJHNvdXJjZV9pbmRlbnQsCgkJJ2NvbnZlcnQ9cycgPT4gXCRj
b252ZXJ0X29wdGlvbnMsCgkJJ2Jyb2tlbiEnID0+IFwkYnJva2VuLAoJCSdzdGF0cyEnID0+IFwk
c3RhdHMsCgkJJ298b3ZlcndyaXRlIScgPT4gXCRvdmVyd3JpdGUsCgkJJ3F8cXVpZXQhJyA9PiBc
JHF1aWV0LAoJCSd2fHZlcnNpb24nID0+IFwkdmVyc2lvbiwKCQknaHxoZWxwfHVzYWdlJyA9PiBc
JGhlbHAsCgkJKSkgewogICAgZGllICIkUDogaW52YWxpZCBhcmd1bWVudCAtIHVzZSAtLWhlbHAg
aWYgbmVjZXNzYXJ5XG4iOwp9CgppZiAoJGhlbHApIHsKICAgIHVzYWdlKCk7CiAgICBleGl0IDA7
Cn0KCmlmICgkdmVyc2lvbikgewogICAgcHJpbnQgIiRQOiB2JFZcbiI7CiAgICBleGl0IDA7Cn0K
Cm15ICRtYXhfc3BhY2VzX2JlZm9yZV90YWIgPSAkc291cmNlX2luZGVudCAtIDE7Cm15ICRzcGFj
ZXNfdG9fdGFiID0gc3ByaW50ZigiJSpzIiwgJHNvdXJjZV9pbmRlbnQsICIiKTsKCnNldF9hbGxf
b3B0aW9ucygtMSk7CgpteSBAYWN0dWFsX29wdGlvbnMgPSBzcGxpdCgnLCcsICRjb252ZXJ0X29w
dGlvbnMpOwpmb3JlYWNoIG15ICRvcHQgKEBhY3R1YWxfb3B0aW9ucykgewogICAgaWYgKCRvcHQg
ZXEgImFsbCIpIHsKCXNldF9hbGxfb3B0aW9ucygwKTsKICAgIH0KICAgIGlmIChleGlzdHMoJGhh
c2h7JG9wdH0pKSB7CgkkaGFzaHskb3B0fSA9IDA7CiAgICB9IGVsc2UgewoJcHJpbnQgIkludmFs
aWQgLS1jb252ZXJ0IG9wdGlvbjogJyRvcHQnLCBpZ25vcmVkXG4iOwogICAgfQp9CgpzdWIgdXNh
Z2UgewogICAgcHJpbnQgPDxFT1Q7CnVzYWdlOiAkUCBbb3B0aW9uc10gPGZpbGVzPgp2ZXJzaW9u
OiAkVgoKRU9UCiAgICBwcmludCAiQXZhaWxhYmxlIGNvbnZlcnNpb25zOlxuIjsKICAgIGZvcmVh
Y2ggbXkgJGNvbnZlcnQgKEBzdGRfb3B0aW9ucykgewoJcHJpbnQgIlx0JGNvbnZlcnRcbiI7CiAg
ICB9CiAgICBwcmludCAiQWRkaXRpb25hbCBjb252ZXJzaW9ucyB3aGljaCBtYXkgbm90IHdvcmsg
d2VsbDpcbiI7CiAgICBwcmludCAiXHQoZW5hYmxlIGluZGl2aWR1YWxseSBvciB3aXRoIC0tY29u
dmVydD1hbGwgLS1icm9rZW4pXG4iOwogICAgZm9yZWFjaCBteSAkY29udmVydCAoQG90aGVyX29w
dGlvbnMpIHsKCXByaW50ICJcdCRjb252ZXJ0XG4iOwogICAgfQogICAgcHJpbnQgIlxuIjsKICAg
IHByaW50ICJVc2UgLS1jb252ZXJ0PShjb21tYSBzZXBhcmF0ZWQgbGlzdClcbiI7CiAgICBwcmlu
dCAiICAgaWU6IC0tY29udmVydD1wcmludGtfdG9fcHJfbGV2ZWwsY29hbGVzY2VfZm9ybWF0c1xu
IjsKICAgIHByaW50IDw8RU9UOwoKSW5wdXQgc291cmNlIGZpbGUgZGVzY3JpcHRpb25zOgogIC0t
c291cmNlLWluZGVudCA9PiBIb3cgbWFueSBzcGFjZXMgYXJlIHVzZWQgZm9yIGFuIGluZGVudCAo
ZGVmYXVsdDogOCkKCk91dHB1dCBmaWxlOgogIC0tb3ZlcndyaXRlID0+IHdyaXRlIHRoZSBjaGFu
Z2VzIHRvIHRoZSBzb3VyY2UgZmlsZQogIC0tc3VmZml4ID0+IHN1ZmZpeCB0byBhcHBlbmQgdG8g
bmV3IGZpbGUgKGRlZmF1bHQ6IC5zdHlsZSkKCk90aGVyIG9wdGlvbnM6CiAgLS1xdWlldCA9PiBk
b24ndCBzaG93IGNvbnZlcnNpb24gd2FybmluZyBtZXNzYWdlcyAoZGVmYXVsdDogZGlzYWJsZWQp
CiAgLS1zdGF0cyA9PiBzaG93IGNvbnZlcnNpb25zIGRvbmUgKGRlZmF1bHQ6IGVuYWJsZWQpCiAg
LS12ZXJzaW9uID0+IHNob3cgdmVyc2lvbgogIC0taGVscCA9PiBzaG93IHRoaXMgaGVscCBpbmZv
cm1hdGlvbgpFT1QKfQoKc3ViIGNoZWNrX2xhYmVsIHsKICAgIG15ICgkbGVhZGluZywgJGxhYmVs
KSA9IEBfOwoKICAgIGlmICgkbGFiZWwgPT0gImRlZmF1bHQiKSB7CglyZXR1cm4gIiRsZWFkaW5n
JGxhYmVsOiI7CiAgICB9CiAgICByZXR1cm4gIiRsYWJlbDoiOwp9CgpzdWIgY2hlY2tfZm9yIHsK
ICAgIG15ICgkbGVhZGluZywgJHRlc3QxLCAkdGVzdDIsICR0ZXN0MykgPSBAXzsKCiAgICAkdGVz
dDEgPX4gcy9eXHMrfFxzKyQvL2c7CiAgICAkdGVzdDIgPX4gcy9eXHMrfFxzKyQvL2c7CiAgICAk
dGVzdDMgPX4gcy9eXHMrfFxzKyQvL2c7CgogICAgcmV0dXJuICIke2xlYWRpbmd9Zm9yICgkdGVz
dDE7ICR0ZXN0MjsgJHRlc3QzKSI7Cn0KCnN1YiB0YWJpZnkgewogICAgbXkgKCRsZWFkaW5nKSA9
IEBfOwoKI2NvbnZlcnQgbGVhZGluZyBzcGFjZXMgdG8gdGFicwogICAgMSB3aGlsZSAkbGVhZGlu
ZyA9fiBzQF4oW1x0XSopJHNwYWNlc190b190YWJAJDFcdEBnOwojUmVtb3ZlIHNwYWNlcyBiZWZv
cmUgYSB0YWIKICAgIDEgd2hpbGUgJGxlYWRpbmcgPX4gc0BeKFtcdF0qKShbIF17MSwkbWF4X3Nw
YWNlc19iZWZvcmVfdGFifSlcdEAkMVx0QGc7CgogICAgcmV0dXJuICIkbGVhZGluZyI7Cn0KCnN1
YiBkZWZhdWx0X3N1YnN0aXR1dGUgewogICAgbXkgKCRhcmd1bWVudCkgPSBAXzsKCiAgICByZXR1
cm4gIiRhcmd1bWVudCI7Cn0KCnN1YiBzdWJzdF9saW5lX21vZGVfZm4gewogICAgbXkgKCRsaW5l
cywgJG1hdGNoLCAkZm4sICRhcmdzKSA9IEBfOwoKICAgIG15ICRmdW5jdGlvbiA9IFwmJGZuOwog
ICAgbXkgQGxpbmVzID0gc3BsaXQoIlxuIiwgJGxpbmVzKTsKICAgIG15ICRjb3VudCA9IDA7Cgog
ICAgZm9yZWFjaCBteSAkbGluZSAoQGxpbmVzKSB7CglteSAkb2xkbGluZSA9ICRsaW5lOwoJJGxp
bmUgPX4gc0AkbWF0Y2hAJiRmdW5jdGlvbihldmFsICRhcmdzKUBnZTsKCSRjb3VudCsrIGlmICgk
b2xkbGluZSBuZSAkbGluZSk7CiAgICB9CgogICAgcmV0dXJuICgkY291bnQsIGpvaW4oIlxuIiwg
QGxpbmVzKSAuICJcbiIpOwp9CgpzdWIgc3Vic3RfbGluZV9tb2RlIHsKICAgIG15ICgkbGluZXMs
ICRtYXRjaCwgJHN1YnN0aXR1dGUpID0gQF87CgogICAgcmV0dXJuIHN1YnN0X2xpbmVfbW9kZV9m
bigkbGluZXMsICRtYXRjaCwgImRlZmF1bHRfc3Vic3RpdHV0ZSIsICRzdWJzdGl0dXRlKTsKfQoK
c3ViIGNvbnZlcnQgewogICAgbXkgKCRjaGVjaykgPSBAXzsKCiAgICByZXR1cm4gMSBpZiAoJGhh
c2h7JGNoZWNrfSA+PSAwKTsKCiAgICByZXR1cm4gMDsKfQoKc3ViIHN0cmlwX2xlYWRpbmdfcGFy
ZW4gewogICAgbXkgKCRzdHJpbmcpID0gQF87CiAgICAkc3RyaW5nID1+IHNAXlwoXHMqQEBnOwog
ICAgcmV0dXJuICRzdHJpbmc7Cn0KCnN1YiBzdHJpcF9vdXRlcl9wYXJlbiB7CiAgICBteSAoJHN0
cmluZykgPSBAXzsKICAgICRzdHJpbmcgPX4gc0BeXChccypAQGc7CiAgICAkc3RyaW5nID1+IHNA
XHMqXCkkQEBnOwogICAgcmV0dXJuICRzdHJpbmc7Cn0KCnN1YiB0cmltX3RyYWlsIHsKICAgIG15
ICgkc3RyaW5nKSA9IEBfOwogICAgJHN0cmluZyA9fiBzQFxzKiRAQGc7CiAgICByZXR1cm4gJHN0
cmluZzsKfQoKCmZvcmVhY2ggbXkgJGZpbGUgKEBBUkdWKSB7CiAgICBteSAkZjsKICAgIG15ICR0
ZXh0OwogICAgbXkgJG9sZHRleHQ7CgojIHJlYWQgdGhlIGZpbGUKCiAgICBuZXh0IGlmICgoLWQg
JGZpbGUpKTsKCiAgICBvcGVuKCRmLCAnPCcsICRmaWxlKQoJb3IgZGllICIkUDogQ2FuJ3Qgb3Bl
biAkZmlsZSBmb3IgcmVhZFxuIjsKICAgICRvbGR0ZXh0ID0gZG8geyBsb2NhbCgkLykgOyA8JGY+
IH07CiAgICBjbG9zZSgkZik7CgogICAgbmV4dCBpZiAoJG9sZHRleHQgZXEgIiIpOwoKICAgICR0
ZXh0ID0gJG9sZHRleHQ7CgojIENvbnZlcnQgcHJpbnRrKEtFUk5fPGxldmVsPiB0byBwcl88bGV2
ZWw+KAogICAgJGRvX2N2dCA9ICJwcmludGtfdG9fcHJfbGV2ZWwiOwogICAgaWYgKGNvbnZlcnQo
JGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAXGJwcmludGtccypcKFxz
KktFUk5fKElORk98V0FSTklOR3xFUlJ8QUxFUlR8Q1JJVHxFTUVSR3xOT1RJQ0V8Q09OVClccypA
cHJfXEwkMVwoQGc7CgkkdGV4dCA9fiBzQFxicHJfd2FybmluZ1xiQHByX3dhcm5AZzsKCgkkaGFz
aHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxicHJpbnRrX3JhdGVsaW1pdGVkXHMqXChccypLRVJO
XyhJTkZPfFdBUk5JTkd8RVJSfEFMRVJUfENSSVR8RU1FUkd8Tk9USUNFfENPTlQpXHMqQHByX1xM
JDFfcmF0ZWxpbWl0ZWRcKEBnOwoJJHRleHQgPX4gc0BcYnByX3dhcm5pbmdfcmF0ZWxpbWl0ZWRc
YkBwcl93YXJuX3JhdGVsaW1pdGVkQGc7CgoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0Bc
YnByaW50a19vbmNlXHMqXChccypLRVJOXyhJTkZPfFdBUk5JTkd8RVJSfEFMRVJUfENSSVR8RU1F
Ukd8Tk9USUNFfENPTlQpXHMqQHByX1xMJDFfb25jZVwoQGc7CgkkdGV4dCA9fiBzQFxicHJfd2Fy
bmluZ19vbmNlXGJAcHJfd2Fybl9vbmNlQGc7CiAgICB9CgojIENvbnZlcnQgcHJpbnRrKEtFUk5f
REVCVUcgdG8gcHJfZGVidWcoCiAgICAkZG9fY3Z0ID0gInByaW50a19LRVJOX0RFQlVHX3RvX3By
X2RlYnVnIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAk
dGV4dCA9fiBzQFxicHJpbnRrXHMqXChccypLRVJOXyhERUJVRylccypAcHJfXEwkMVwoQGc7CiAg
ICB9CgojIENvbnZlcnQgZGV2X3ByaW50ayhLRVJOXzxsZXZlbD4gdG8gZGV2XzxsZXZlbD4oCiAg
ICAkZG9fY3Z0ID0gImRldl9wcmludGtfdG9fZGV2X2xldmVsIjsKICAgIGlmIChjb252ZXJ0KCRk
b19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxiZGV2X3ByaW50a1xzKlwo
XHMqS0VSTl8oSU5GT3xXQVJOSU5HfEVSUnxBTEVSVHxDUklUfEVNRVJHfE5PVElDRSlccyosXHMq
QGRldl9cTCQxXChAZzsKCSR0ZXh0ID1+IHNAXGJkZXZfd2FybmluZ1xiQGRldl93YXJuQGc7CgoJ
JGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0BcYmRldl9wcmludGtfcmF0ZWxpbWl0ZWRccypc
KFxzKktFUk5fKElORk98V0FSTklOR3xFUlJ8QUxFUlR8Q1JJVHxFTUVSR3xOT1RJQ0V8Q09OVClc
cyosXHMqQGRldl9cTCQxX3JhdGVsaW1pdGVkXChAZzsKCSR0ZXh0ID1+IHNAXGJkZXZfd2Fybmlu
Z19yYXRlbGltaXRlZFxiQGRldl93YXJuX3JhdGVsaW1pdGVkQGc7CgoJJGhhc2h7JGRvX2N2dH0g
Kz0gJHRleHQgPX4gc0BcYmRldl9wcmludGtfb25jZVxzKlwoXHMqS0VSTl8oSU5GT3xXQVJOSU5H
fEVSUnxBTEVSVHxDUklUfEVNRVJHfE5PVElDRXxDT05UKVxzKixccypAZGV2X1xMJDFfb25jZVwo
QGc7CgkkdGV4dCA9fiBzQFxiZGV2X3dhcm5pbmdfb25jZVxiQGRldl93YXJuX29uY2VAZzsKICAg
IH0KCiMgQ29udmVydCBkZXZfcHJpbnRrKEtFUk5fREVCVUcgdG8gZGV2X2RiZygKICAgICRkb19j
dnQgPSAiZGV2X3ByaW50a19LRVJOX0RFQlVHX3RvX2Rldl9kYmciOwogICAgaWYgKGNvbnZlcnQo
JGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAXGJkZXZfcHJpbnRrXHMq
XChccypLRVJOXyhERUJVRylccyosXHMqQGRldl9kYmdcKEBnOwogICAgfQoKIyBDb252ZXJ0IHNk
ZXZfcHJpbnRrKEtFUk5fPGxldmVsPiB0byBzZGV2XzxsZXZlbD4oCiAgICAkZG9fY3Z0ID0gInNk
ZXZfcHJpbnRrX3RvX3NkZXZfbGV2ZWwiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCSRo
YXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAXGJzZGV2X3ByaW50a1xzKlwoXHMqS0VSTl8oSU5G
T3xXQVJOSU5HfEVSUnxBTEVSVHxDUklUfEVNRVJHfE5PVElDRSlccyosXHMqQHNkZXZfXEwkMVwo
QGc7CgkkdGV4dCA9fiBzQFxic2Rldl93YXJuaW5nXGJAc2Rldl93YXJuQGc7CgoJJGhhc2h7JGRv
X2N2dH0gKz0gJHRleHQgPX4gc0BcYnNkZXZfcHJpbnRrX3JhdGVsaW1pdGVkXHMqXChccypLRVJO
XyhJTkZPfFdBUk5JTkd8RVJSfEFMRVJUfENSSVR8RU1FUkd8Tk9USUNFfENPTlQpXHMqLFxzKkBz
ZGV2X1xMJDFfcmF0ZWxpbWl0ZWRcKEBnOwoJJHRleHQgPX4gc0BcYnNkZXZfd2FybmluZ19yYXRl
bGltaXRlZFxiQHNkZXZfd2Fybl9yYXRlbGltaXRlZEBnOwoKCSRoYXNoeyRkb19jdnR9ICs9ICR0
ZXh0ID1+IHNAXGJzZGV2X3ByaW50a19vbmNlXHMqXChccypLRVJOXyhJTkZPfFdBUk5JTkd8RVJS
fEFMRVJUfENSSVR8RU1FUkd8Tk9USUNFfENPTlQpXHMqLFxzKkBzZGV2X1xMJDFfb25jZVwoQGc7
CgkkdGV4dCA9fiBzQFxic2Rldl93YXJuaW5nX29uY2VcYkBzZGV2X3dhcm5fb25jZUBnOwogICAg
fQoKIyBDb252ZXJ0IHNkZXZfcHJpbnRrKEtFUk5fREVCVUcgdG8gc2Rldl9kYmcoCiAgICAkZG9f
Y3Z0ID0gInNkZXZfcHJpbnRrX0tFUk5fREVCVUdfdG9fc2Rldl9kYmciOwogICAgaWYgKGNvbnZl
cnQoJGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAXGJzZGV2X3ByaW50
a1xzKlwoXHMqS0VSTl8oREVCVUcpXHMqLFxzKkBzZGV2X2RiZ1woQGc7CiAgICB9CgojIENvYWxl
c2NlIGxvbmcgZm9ybWF0cwogICAgJGRvX2N2dCA9ICJjb2FsZXNjZV9mb3JtYXRzIjsKICAgIGlm
IChjb252ZXJ0KCRkb19jdnQpKSB7CglteSAkY291bnQgPSAwOwoJZG8gewoJICAgICRjb3VudCA9
ICR0ZXh0ID1+IHNAXGIoJHtsb2dGdW5jdGlvbnN9XHMqXChbXjtdKykoPyFcXG4pXCJccypcblxz
KlwiQCQxQGc7CgkgICAgJGhhc2h7JGRvX2N2dH0gKz0gJGNvdW50OwoJfSB3aGlsZSAoJGNvdW50
ID4gMCk7CiAgICB9CgojIEFkZCBzcGFjZSBiZXR3ZWVuIEtFUk5fPExFVkVMPiBhbmQgb3BlbiBx
dW90ZQogICAgJGRvX2N2dCA9ICJzcGFjZV9hZnRlcl9LRVJOX2xldmVsIjsKICAgIGlmIChjb252
ZXJ0KCRkb19jdnQpKSB7CglteSBAbWF0Y2hlcyA9ICR0ZXh0ID1+IG1AXGIoS0VSTl8oREVCVUd8
SU5GT3xXQVJOSU5HfEVSUnxBTEVSVHxDUklUfEVNRVJHfE5PVElDRXxDT05UKSkgXCJAZzsKCSRo
YXNoeyRkb19jdnR9IC09IEBtYXRjaGVzOwoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0Bc
YihLRVJOXyhERUJVR3xJTkZPfFdBUk5JTkd8RVJSfEFMRVJUfENSSVR8RU1FUkd8Tk9USUNFfENP
TlQpKVsgXHRdKlwiQCQxIFwiQGc7CiAgICB9CgojIFJlbW92ZSB1bm5lY2Vzc2FyeSBwYXJlbnRo
ZXNlcyBhcm91bmQgcmV0dXJuCiAgICAkZG9fY3Z0ID0gImRlcGFyZW50aGVzaXplX3JldHVybnMi
OwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15ICRjb3VudCA9IDA7CglkbyB7CgkgICAg
JGNvdW50ID0gJHRleHQgPX4gc0BcYnJldHVyblxzKiR7bWF0Y2hfYmFsYW5jZWRfcGFyZW50aGVz
ZXN9XHMqO0AicmV0dXJuICIgLiBzY2FsYXIoc3RyaXBfb3V0ZXJfcGFyZW4oJDEpKSAuICI7IkBl
Z3g7CgkgICAgJGhhc2h7JGRvX2N2dH0gKz0gJGNvdW50OwoJfSB3aGlsZSAoJGNvdW50ID4gMCk7
CiAgICB9CgojIFRoaXMgZG9lc24ndCB3b3JrIHZlcnkgd2VsbCwgdG9vIG1hbnkgY29tbWVudHMg
bW9kaWZpZWQKIyBQdXQgbGFiZWxzIChidXQgbm90ICJkZWZhdWx0OiIpIG9uIGNvbHVtbiAxCiAg
ICAkZG9fY3Z0ID0gIm1vdmVfbGFiZWxzX3RvX2NvbHVtbl8xIjsKICAgIGlmIChjb252ZXJ0KCRk
b19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQF4oWyBcdF0rKShbQS1aYS16
MC05X10rKVxzKjpbIFx0XSo6WyBcdF0qJEBjaGVja19sYWJlbCgkMSwgJDIpQGdlOwogICAgfQoK
IyBBZGQgc3BhY2UgYWZ0ZXIgKGlmLCB3aGlsZSwgZm9yLCBzd2l0Y2gpIGFuZCBvcGVuIHBhcmVu
dGhlc2lzCiAgICAkZG9fY3Z0ID0gInNwYWNlX2FmdGVyX2lmX3doaWxlX2Zvcl9zd2l0Y2giOwog
ICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15IEBtYXRjaGVzID0gJHRleHQgPX4gbUBcYihp
Znx3aGlsZXxmb3J8c3dpdGNoKSBcKEBnOwoJJGhhc2h7JGRvX2N2dH0gLT0gQG1hdGNoZXM7Cgkk
aGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxiKGlmfHdoaWxlfGZvcnxzd2l0Y2gpWyBcdF0q
XChAJDEgXChAZzsKICAgIH0KCiMgQWRkIHNwYWNlIGFmdGVyIGNvbW1hCiAgICAkZG9fY3Z0ID0g
InNwYWNlX2FmdGVyX2NvbW1hIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQpKSB7CgkkaGFzaHsk
ZG9fY3Z0fSArPSAkdGV4dCA9fiBzQCwoPz1bXHdcKF0pQCwgQGc7CiAgICB9CgojIEFkZCBzcGFj
ZXMgYXJvdW5kIGxvZ2ljYWwgdGVzdHMKICAgICRkb19jdnQgPSAic3BhY2VfYXJvdW5kX2xvZ2lj
YWxfdGVzdHMiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15ICRjb3VudCA9IDA7Cglk
byB7CgkgICAgJGNvdW50ID0gJHRleHQgPX4gc0AoW1wpXHddKykoPT18IT18Pnw+PXw8fDw9fCYm
fFx8XHwpKFtcKFx3XCpcLV0pQCQxICQyICQzQGc7CgkgICAgJGhhc2h7JGRvX2N2dH0gKz0gJGNv
dW50OwoJfSB3aGlsZSAoJGNvdW50ID4gMCk7CiAgICB9CgojIEFkZCBzcGFjZXMgYXJvdW5kIGFz
c2lnbgogICAgJGRvX2N2dCA9ICJzcGFjZV9hcm91bmRfYXNzaWduIjsKICAgIGlmIChjb252ZXJ0
KCRkb19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQChbXClcd10rKSg9fFwr
PXxcLT18XCo9fC89fD4+PXw8PD0pKFtcKFx3XCpcLV0pQCQxICQyICQzQGc7CiAgICB9CgojIEFk
ZCBzcGFjZXMgYXJvdW5kIGFyaXRobWV0aWMKICAgICRkb19jdnQgPSAic3BhY2VfYXJvdW5kX2Fy
aXRobWV0aWMiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9
ICR0ZXh0ID1+IHNAKFtcKVx3XSspKFwrfFwtKShbXChcd1wqXSlAJDEgJDIgJDNAZzsKICAgIH0K
CiMgQWRkIHNwYWNlcyBhcm91bmQgdHJpZ3JhcGgKICAgICRkb19jdnQgPSAic3BhY2VfYXJvdW5k
X3RyaWdyYXBoIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQpKSB7CglteSBAbWF0Y2hlcyA9ICR0
ZXh0ID1+IG1AKFtcKVx3XCJdKykgXD8gKFtcKFwpXFtcXVx3XCpcIiBcdFwuXD5cLV0qW14gXHRd
KSBcOiAoW1x3XChcIlwtXSlAZzsKCSRoYXNoeyRkb19jdnR9IC09IEBtYXRjaGVzOwoJJGhhc2h7
JGRvX2N2dH0gKz0gJHRleHQgPX4gc0AoW1wpXHdcIl0rKVsgXHRdKlw/WyBcdF0qKFtcKFwpXFtc
XVx3XCpcIiBcdFwuXD5cLV0qW14gXHRdKVsgXHRdKlw6WyBcdF0qKFtcd1woXCJcLV0pQCQxID8g
JDIgOiAkM0BnOwogICAgfQoKIyBVc2UgYSBzcGFjZSBiZWZvcmUgYSBwb2ludGVyLAogICAgJGRv
X2N2dCA9ICJzcGFjZV9iZWZvcmVfcG9pbnRlciI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkg
ewoJbXkgQG1hdGNoZXMgPSAkdGV4dCA9fiBtQFxic3RydWN0IFx3KyBcKkBnOwoJJGhhc2h7JGRv
X2N2dH0gLT0gQG1hdGNoZXM7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxic3RydWN0
XGJccysoXHcrKShbXHRdKylcKlsgXHRdKkBzdHJ1Y3QgJDEkMlwqQGc7CgkkaGFzaHskZG9fY3Z0
fSArPSAkdGV4dCA9fiBzQFxic3RydWN0XGJccysoXHcrKSAqXCpbIFx0XSpAc3RydWN0ICQxIFwq
QGc7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxic3RydWN0XGJccysoXHcrKShbIFx0
XSspXCpfX0BzdHJ1Y3QgJDEkMlwqIF9fQGc7CiAgICB9CgojIENvbnZlcnQgImZvciAoZm9vO2Jh
cjtiYXopIiB0byAiZm9yIChmb287IGJhcjsgYmF6KSIKICAgICRkb19jdnQgPSAic3BhY2VfYWZ0
ZXJfZm9yX3NlbWljb2xvbnMiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15ICRjb3Vu
dDsKCSgkY291bnQsICR0ZXh0KSA9IHN1YnN0X2xpbmVfbW9kZV9mbigkdGV4dCwgJ14oWyBcdF0q
KWZvclxzKlwoWyBcdF0qKFteO10rKTtbIFx0XSooW147XSspO1sgXHRdKihbXlwpXSspXCknLCAn
Y2hlY2tfZm9yJywgJyQxLCAkMiwgJDMsICQ0Jyk7CgkkaGFzaHskZG9fY3Z0fSArPSAkY291bnQ7
CiAgICB9CgojIGN1ZGRsZSBvcGVuIGJyYWNlCiAgICAkZG9fY3Z0ID0gImN1ZGRsZV9vcGVuX2Jy
YWNlIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQpKSB7CglteSBAbWF0Y2hlcyA9ICR0ZXh0ID1+
IG1AKFwpfFxiZWxzZVxiKSBce1xuQGc7CgkkaGFzaHskZG9fY3Z0fSAtPSBAbWF0Y2hlczsKCSRo
YXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAKFwpfFxiZWxzZVxifFxiY2FzZVxzK1x3K1xzKjp8
XGIoPzpzdHJ1Y3R8dW5pb24pWyBcdF0qKD86XHcrfCkpWyBcdF0qWyBcdF0qXG5bIFx0XStce1sg
XHRdKlxuQCQxIFx7XG5AZzsKICAgIH0KCiMgY3VkZGxlIGVsc2UKICAgICRkb19jdnQgPSAiY3Vk
ZGxlX2Vsc2UiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15IEBtYXRjaGVzID0gJHRl
eHQgPX4gbUBcfSBlbHNlXGJAZzsKCSRoYXNoeyRkb19jdnR9IC09IEBtYXRjaGVzOwoJJGhhc2h7
JGRvX2N2dH0gKz0gJHRleHQgPX4gc0BcfVsgXHRdKlxuWyBcdF0rZWxzZVxiQFx9IGVsc2VAZzsK
ICAgIH0KCiMgUmVtb3ZlIG11bHRpcGxlIHNlbWljb2xvbnMgYXQgZW5kLW9mLWxpbmUKICAgICRk
b19jdnQgPSAiY29hbGVzY2Vfc2VtaWNvbG9ucyI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkg
ewoJbXkgJGNvdW50ID0gMDsKCWRvIHsKCSAgICAkY291bnQgPSAkdGV4dCA9fiBzQDtbIFx0XSo7
WyBcdF0qXG5AO1xuQGc7CgkgICAgJGhhc2h7JGRvX2N2dH0gKz0gJGNvdW50OwoJfSB3aGlsZSAo
JGNvdW50ID4gMCk7CiAgICB9CgojIFJlbW92ZSBzcGFjZXMgYmVmb3JlIG9wZW4gYnJhY2tldAog
ICAgJGRvX2N2dCA9ICJyZW1vdmVfd2hpdGVzcGFjZV9iZWZvcmVfYnJhY2tldCI7CiAgICBpZiAo
Y29udmVydCgkZG9fY3Z0KSkgewoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0BbIFx0XStc
W0BcW0BnOwogICAgfQoKIyBSZW1vdmUgc3BhY2VzIGFmdGVyIG9wZW4gcGFyZW50aGVzaXMgYW5k
IGJlZm9yZSBjbG9zZSBwYXJlbnRoZXNpcwogICAgJGRvX2N2dCA9ICJyZW1vdmVfcGFyZW50aGVz
aXNfd2hpdGVzcGFjZSI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkgewoJJHRleHQgPX4gc0Bb
IFx0XSpcKUBcKUBnOwoJJHRleHQgPX4gc0BcKFsgXHRdKkBcKEBnOwogICAgfQoKIyBDb252ZXJ0
IGxlYWRpbmcgc3BhY2VzIHRvIHRhYnMKICAgICRkb19jdnQgPSAibGVhZGluZ19zcGFjZXNfdG9f
dGFicyI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkgewoJbXkgJGNvdW50OwoJKCRjb3VudCwg
JHRleHQpID0gc3Vic3RfbGluZV9tb2RlX2ZuKCR0ZXh0LCAnKF5bIFx0XSspJywgJ3RhYmlmeScs
ICckMScpOwoJJGhhc2h7JGRvX2N2dH0gKz0gJGNvdW50OwogICAgfQoKIyBSZW1vdmUgdHJhaWxp
bmcgd2hpdGVzcGFjZQogICAgJGRvX2N2dCA9ICJyZW1vdmVfdHJhaWxpbmdfd2hpdGVzcGFjZSI7
CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkgewoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4g
c0BbIFx0XStcbkBcbkBnOwoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0BcbiskQFxuQGc7
CiAgICB9CgojIFJlbW92ZSB3aGl0ZXNwYWNlIGJlZm9yZSBxdW90ZWQgbmV3bGluZXMKICAgICRk
b19jdnQgPSAicmVtb3ZlX3doaXRlc3BhY2VfYmVmb3JlX3F1b3RlZF9uZXdsaW5lIjsKICAgIGlm
IChjb252ZXJ0KCRkb19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQChcIlte
XCJcbl0qW14gXHRdKVsgXHRdK1xcbkAkMVxcbkBnOwogICAgfQoKIyBSZW1vdmUgd2hpdGVzcGFj
ZSBiZWZvcmUgdHJhaWxpbmcgc2VtaWNvbG9uCiAgICAkZG9fY3Z0ID0gInJlbW92ZV93aGl0ZXNw
YWNlX2JlZm9yZV90cmFpbGluZ19zZW1pY29sb24iOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkp
IHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAKFxuW15cbl0rKVxzKztbIFx0XSpcbiRA
JDE7XG5AZzsKICAgIH0KCiMgUmVtb3ZlIHdoaXRlc3BhY2UgYWZ0ZXIgY2FzdAogICAgJGRvX2N2
dCA9ICJyZW1vdmVfd2hpdGVzcGFjZV9hZnRlcl9jYXN0IjsKICAgIGlmIChjb252ZXJ0KCRkb19j
dnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFsgXHRdKlwqWyBcdF0qXClbIFx0
XStAIFwqXClAZzsKICAgIH0KCiMgQ29udmVydCBjOTkgY29tbWVudHMgdG8gLyogKi8gKGRvbid0
IGNvbnZlcnQgKGh0dHB8ZnRwKTovLykKICAgICRkb19jdnQgPSAiY29udmVydF9jOTlfY29tbWVu
dHMiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0
ID1+IHNAKD88ITopXC9cL1sgXHRdKiguKilbIFx0XSpcbitAXC8qICQxICpcL1xuQGc7CiAgICB9
CgojIFJlbW92ZSBicmFjZXMgZnJvbSBzaW5nbGUgc3RhdGVtZW50cyAobm90IG11bHRpcGxlLWxp
bmUgc2luZ2xlIHN0YXRlbWVudHMpCiAgICAkZG9fY3Z0ID0gInJlbW92ZV9zaW5nbGVfc3RhdGVt
ZW50X2JyYWNlcyI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkgewoJJGhhc2h7JGRvX2N2dH0g
Kz0gJHRleHQgPX4gc0BbIFx0XSpce1sgXHRdKlxuKFteO1x7XG5dKzspWyBcdF0qXG5bIFx0XStc
fVsgXHRdKlxuQFxuJDFcbkBnOwogICAgfQoKIyBIb2lzdCBhc3NpZ25zIGZyb20gaWYKICAgICRk
b19jdnQgPSAiaG9pc3RfYXNzaWduc19mcm9tX2lmIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQp
KSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzQFxuKFsgXHRdKilpZlxzKlwoXHMqKFtc
IV17MCwxfSlccypcKFxzKihbXCpcd1wtXD5cLlxbXF1dKylccyo9XHMqKD89W149XSlccyooW1x3
XC1cPlwuXCogXHRcW1xdXSpccyoke21hdGNoX2JhbGFuY2VkX3BhcmVudGhlc2VzfSpccyooXD9c
OlwmfFx8fFw+XD58XDxcPHxcLXxcK3xcKnxcLyBcdCkqXHMqW1x3XC1cPlwuXCogXHRcW1xdXSpc
cyoke21hdGNoX2JhbGFuY2VkX3BhcmVudGhlc2VzfSopXHMqXClAXG4kMSQzID0gJDQ7XG4kMWlm
IFwoJDIkM0BneDsKICAgIH0KCiMgUmVtb3ZlIGNhc3RzIG9mIHByaXZhdGVfZGF0YQogICAgJGRv
X2N2dCA9ICJyZW1vdmVfcHJpdmF0ZV9kYXRhX2Nhc3RzIjsKICAgIGlmIChjb252ZXJ0KCRkb19j
dnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzLz1ccypcKFxzKlx3K1xzKlx3K1xz
KlwqXHMqXClccyooXHcrKS0+XHMqcHJpdmF0ZV9kYXRhXGIvPSAkMS0+cHJpdmF0ZV9kYXRhL2c7
CiAgICB9CgojIFJlbW92ZSBzdGF0aWMgaW5pdGlhbGl6YXRpb25zIHRvIDAgb3IgTlVMTAoKICAg
ICRkb19jdnQgPSAicmVtb3ZlX3N0YXRpY19pbml0aWFsaXphdGlvbnNfdG9fMCI7CiAgICBpZiAo
Y29udmVydCgkZG9fY3Z0KSkgewoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gcy9cYihbIFx0
XSopc3RhdGljXHMqKFtcd1x0IFwqXSspXHMqPVxzKigwfE5VTEwpXHMqOy8iJDFzdGF0aWMgIiAu
IHNjYWxhcih0cmltX3RyYWlsKCQyKSkgLiAiOyIvZWd4OwogICAgfQoKIyBDb252ZXJ0ICJDYW1l
bENhc2UiIHRvICJjYW1lbF9jYXNlIgogICAgJGRvX2N2dCA9ICJDYW1lbENhc2VfdG9fY2FtZWxf
Y2FzZSI7CiAgICBpZiAoY29udmVydCgkZG9fY3Z0KSkgewoJbXkgJGNvdW50ID0gMDsKCWRvIHsK
CSAgICAkY291bnQgPSAkdGV4dCA9fiBzL1xiKFtBLVphLXpdKShbYS16X10rKShbQS1aXSkoW2Et
ekEtWl0rKVxiL1xMJDFcRSQyX1xMJDNcRSQ0L2c7CgkgICAgJGhhc2h7JGRvX2N2dH0gKz0gJGNv
dW50OwoJfSB3aGlsZSAoJGNvdW50ID4gMCk7CiAgICB9CgojIFJlbW92ZSBjb21wYXJpc29ucyB0
byB0cnVlIG9yIGZhbHNlCiAgICAkZG9fY3Z0ID0gInJlbW92ZV90cnVlX2ZhbHNlX2NvbXBhcmlz
b25zIjsKICAgIGlmIChjb252ZXJ0KCRkb19jdnQpKSB7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4
dCA9fiBzLyhcKFteXD1cO1x7XH1cKF0rKT09XHMqdHJ1ZVxzKlwpLyIoIiAuIHNjYWxhcihzdHJp
cF9sZWFkaW5nX3BhcmVuKHRyaW1fdHJhaWwoJDEpKSkgLiAiKSIvZWd4OwoJJGhhc2h7JGRvX2N2
dH0gKz0gJHRleHQgPX4gcy8oXChbXlwhXDtce1x9XChdKykhPVxzKnRydWVccypcKS8iKCEiIC4g
c2NhbGFyKHN0cmlwX2xlYWRpbmdfcGFyZW4odHJpbV90cmFpbCgkMSkpKSAuICIpIi9lZ3g7Cgkk
aGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzLyhcKFteXD1cO1x7XH1cKF0rKT09XHMqZmFsc2Vc
cypcKS8iKCEiIC4gc2NhbGFyKHN0cmlwX2xlYWRpbmdfcGFyZW4odHJpbV90cmFpbCgkMSkpKSAu
ICIpIi9lZ3g7CgkkaGFzaHskZG9fY3Z0fSArPSAkdGV4dCA9fiBzLyhcKFteXCFcO1x7XH1cKF0r
KSE9XHMqZmFsc2VccypcKS8iKCIgLiBzY2FsYXIoc3RyaXBfbGVhZGluZ19wYXJlbih0cmltX3Ry
YWlsKCQxKSkpIC4gIikiL2VneDsKICAgIH0KCiMgUmVtb3ZlIGNvbXBhcmlzb25zIHRvIE5VTEwK
ICAgICRkb19jdnQgPSAicmVtb3ZlX05VTExfY29tcGFyaXNvbnMiOwogICAgaWYgKGNvbnZlcnQo
JGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHMvKFwoW15cPVw7XHtcfVwo
XSspPT1ccypOVUxMXHMqXCkvIighIiAuIHNjYWxhcihzdHJpcF9sZWFkaW5nX3BhcmVuKHRyaW1f
dHJhaWwoJDEpKSkgLiAiKSIvZWd4OwoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gcy8oXChb
XlwhXDtce1x9XChdKykhPVxzKk5VTExccypcKS8iKCIgLiBzY2FsYXIoc3RyaXBfbGVhZGluZ19w
YXJlbih0cmltX3RyYWlsKCQxKSkpIC4gIikiL2VneDsKICAgIH0KCiMgUmVtb3ZlIHRyYWlsaW5n
IGlmIHNlbWljb2xvbnMKICAgICRkb19jdnQgPSAicmVtb3ZlX3RyYWlsaW5nX2lmX3NlbWljb2xv
bnMiOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0
ID1+IHMvXGJpZihccyopKCRtYXRjaF9iYWxhbmNlZF9wYXJlbnRoZXNlcylccyo7KD8hXHMqKGVs
c2V8XC9cKikpL2lmJDEkMi9nOwogICAgfQoKIyBDb252ZXJ0IG5vcm1hbCBjb21tZW50cyB0byBu
ZXR3b3JrIGNvbW1lbnRzCiAgICAkZG9fY3Z0ID0gIm5ldHdvcmtfY29tbWVudHMiOwogICAgaWYg
KGNvbnZlcnQoJGRvX2N2dCkpIHsKCSRoYXNoeyRkb19jdnR9ICs9ICR0ZXh0ID1+IHNAL1wqWyBc
dF0qXG5bIFx0XSpcKkAvKkBnOwoJJGhhc2h7JGRvX2N2dH0gKz0gJHRleHQgPX4gc0AvXCooWyBc
dF0qKShbXlxuXSspXG5bIFx0XSpcKi9AL1wqJDEkMiBcKi9AZzsKICAgIH0KCiMgUmVtb3ZlIHVu
bmVjZXNzYXJ5IHNlbWljb2xvbnMgYWZ0ZXIgc3dpdGNoICgpIHt9OwogICAgJGRvX2N2dCA9ICJy
ZW1vdmVfc3dpdGNoZm9yd2hpbGVpZl9zZW1pY29sb25zIjsKICAgIGlmIChjb252ZXJ0KCRkb19j
dnQpKSB7CglteSAkY291bnQgPSAwOwogICAgICAgIGRvIHsKCSAgICAkY291bnQgPSAwOwoJICAg
ICRjb3VudCArPSAkdGV4dCA9fiBzQFxiKCg/OnN3aXRjaHxmb3J8d2hpbGV8aWYpXHMqJHttYXRj
aF9iYWxhbmNlZF9wYXJlbnRoZXNlc31ccyopJHttYXRjaF9iYWxhbmNlZF9icmFjZXN9XHMqO0Ai
JDEkMyJAZWd4OwoJICAgICRoYXNoeyRkb19jdnR9ICs9ICRjb3VudDsKICAgICAgICB9IHdoaWxl
ICgkY291bnQgPiAwKTsKICAgIH0KCiMgZGV0YWJfZWxzZV9yZXR1cm4KICAgICRkb19jdnQgPSAi
ZGV0YWJfZWxzZV9yZXR1cm4iOwogICAgaWYgKGNvbnZlcnQoJGRvX2N2dCkpIHsKCW15ICRjb3Vu
dCA9IDA7CiAgICAgICAgZG8gewoJICAgICRjb3VudCA9IDA7CgkgICAgJGNvdW50ICs9ICR0ZXh0
ID1+IHNAKD8hZWxzZVxzKylcYihpZlxzKiR7bWF0Y2hfYmFsYW5jZWRfcGFyZW50aGVzZXN9XHMq
KSR7bWF0Y2hfYmFsYW5jZWRfYnJhY2VzfVxzKmVsc2Vccypcez9ccypyZXR1cm5ccysoW147XSs7
KVxzKlx9P0AiJDEkMyJAZWd4OwoJICAgICRoYXNoeyRkb19jdnR9ICs9ICRjb3VudDsKICAgICAg
ICB9IHdoaWxlICgkY291bnQgPiAwKTsKICAgIH0KCiMgUmVtb3ZlIHdoaWxlIHdoaWxlIGxvb3Bz
CiAgICAkZG9fY3Z0ID0gInJlbW92ZV93aGlsZV93aGlsZSI7CiAgICBpZiAoY29udmVydCgkZG9f
Y3Z0KSkgewoJbXkgJGNvdW50ID0gMDsKICAgICAgICBkbyB7CgkgICAgJGNvdW50ID0gMDsKCSAg
ICAkY291bnQgKz0gJHRleHQgPX4gc0Aod2hpbGVccyooJHttYXRjaF9iYWxhbmNlZF9wYXJlbnRo
ZXNlc30pXHMqJHttYXRjaF9iYWxhbmNlZF9icmFjZXN9KVxzKndoaWxlXHMqXDJccyo7QCQxQGVn
eDsKCSAgICAkaGFzaHskZG9fY3Z0fSArPSAkY291bnQ7CiAgICAgICAgfSB3aGlsZSAoJGNvdW50
ID4gMCk7CiAgICB9CgojIFJlbW92ZSBmYWxsdGhyb3VnaCBjb21tZW50cyBhbmQgY29udmVydCB0
byBmYWxsdGhyb3VnaDsKICAgICRkb19jdnQgPSAiZmFsbHRocm91Z2giOwogICAgaWYgKGNvbnZl
cnQoJGRvX2N2dCkpIHsKCSMgd2hpbGUgKGNvbW1lbnQgaGFzIGZhbGx0aHJvdWdoKSB7CgkjICAg
IGlmIG5leHQgbm9uLWJsYW5rLCBub24tY29udGludWF0aW9uIGxpbmUgaXMgKGNhc2Ugb3IgZGVm
YXVsdCkgewoJIyAgICAgICBJbnNlcnQgZmFsbHRocm91Z2g7CgkjICAgICAgIHJlbW92ZSBmYWxs
dGhyb3VnaCBmcm9tIGNvbW1lbnQKCSMgICAgICAgcmVtb3ZlIGNvbW1lbnQgaWYgYmxhbmsKCSMg
ICAgICAgYWRqdXN0IGZhbGx0aHJvdWdoIGluZGVudGF0aW9uCgkjICAgIH0KCSMgfQoKCW15ICRj
b3VudCA9IDA7CglteSBAZmFsbHRocm91Z2hzID0gKAoJICAgICdmYWxsdGhyb3VnaCcsCgkgICAg
J0BmYWxsdGhyb3VnaEAnLAoJICAgICdsaW50IC1mYWxsdGhyb3VnaFsgXHRdKicsCgkgICAgJ1sg
XHQuIV0qKD86RUxTRSw/IHxJTlRFTlRJT05BTCg/OkxZKT8gKT8nLAoJICAgICcoPzplbHNlLD9c
cyopP0ZBTEwoPzpTIHwgfC0pP1RIUig/Ok9VR0h8VSlbIFx0LiFdKig/Oi1bXlxuXHJdKik/JywK
CSAgICAnWyBcdC4hXSooPzpFbHNlLD8gfEludGVudGlvbmFsKD86bHkpPyApPycsCgkgICAgJ0Zh
bGwoPzooPzpzIHwgfC0pW1R0XXx0KWhyKD86b3VnaHx1KVsgXHQuIV0qKD86LVteXG5ccl0qKT8n
LAoJICAgICdbIFx0LiFdKig/OltFZV1sc2UsPyB8W0lpXW50ZW50aW9uYWwoPzpseSk/ICk/JywK
CSAgICAnZmFsbCg/OnMgfCB8LSk/dGhyKD86b3VnaHx1KVsgXHQuIV0qKD86LVteXG5ccl0qKT8n
LAoJKTsKCWRvIHsKCSAgICAkY291bnQgPSAwOwoJICAgIGZvcmVhY2ggbXkgJGZ0IChAZmFsbHRo
cm91Z2hzKSB7CiMJCXByaW50KCJmYWxsdGhyb3VnaDogPCRmdD5cbiIpOwoJCW15ICRjb21tZW50
ID0gJygoKD86WyBcdF0qXG4pKlsgXHRdKikoL1wqXHMqKD8hXCovKT9cYicgLiAiJGZ0IiAuICdc
cyooPyFcKi8pP1wqLyg/OlsgXHRdKlxuKSopKFsgXHRdKikpKD86Y2FzZVxzK3xkZWZhdWx0XHMq
OiknOwojCQlwcmludCgiY29tbWVudDogPCRjb21tZW50PlxuIik7CgkJd2hpbGUgKCR0ZXh0ID1+
IG17JHtjb21tZW50fX1pKSB7CgkJICAgIG15ICRhbGxfYnV0X2Nhc2UgPSAkMTsKCQkgICAgbXkg
JHNwYWNlX2JlZm9yZSA9ICQyOwoJCSAgICBteSAkZmFsbHRocm91Z2ggPSAkMzsKCQkgICAgbXkg
JHNwYWNlX2FmdGVyID0gJDQ7CgkJICAgIG15ICRwb3NfYmVmb3JlID0gJC1bMV07CgkJICAgIG15
ICRwb3NfYWZ0ZXIgPSAkK1szXTsKIwkJICAgIHByaW50KCJtYXRjaDogPCIgLiBzdWJzdHIoJHRl
eHQsICQtWzBdLCAkK1swXSAtICQtWzBdKSAuICI+XG4iKTsKIwkJICAgIHByaW50KCJhbGxfYnV0
X2Nhc2U6IDwkYWxsX2J1dF9jYXNlPlxuIik7CiMJCSAgICBwcmludCgic3BhY2VfYmVmb3JlOiA8
JHNwYWNlX2JlZm9yZT5cbiIpOwojCQkgICAgcHJpbnQoImZhbGx0aHJvdWdoOiA8JGZhbGx0aHJv
dWdoPlxuIik7CiMJCSAgICBwcmludCgic3BhY2VfYWZ0ZXI6IDwkc3BhY2VfYWZ0ZXI+XG4iKTsK
IwkJICAgIHByaW50KCJwb3M6IDwkLVswXSAkK1swXSAkLVsxXSAkK1sxXSAkLVsyXSAkK1syXSAk
LVszXSAkK1szXSAkLVs0XSAkK1s0XT5cbiIpOwoJCSAgICBzdWJzdHIoJHRleHQsICRwb3NfYmVm
b3JlLCAkcG9zX2FmdGVyIC0gJHBvc19iZWZvcmUsICIiKTsKCQkgICAgc3Vic3RyKCR0ZXh0LCAk
cG9zX2JlZm9yZSwgMCwiXG4ke3NwYWNlX2FmdGVyfVx0ZmFsbHRocm91Z2g7XG4iKTsKCQkgICAg
cG9zKCR0ZXh0KSA9IDA7CgkJICAgICRjb3VudCsrOwoJCX0KCSAgICB9CgkgICAgJGhhc2h7JGRv
X2N2dH0gKz0gJGNvdW50OwogICAgICAgIH0gd2hpbGUgKCRjb3VudCA+IDApOwogICAgfQoKIyB3
cml0ZSB0aGUgZmlsZSBpZiBzb21ldGhpbmcgd2FzIGNoYW5nZWQKCiAgICBpZiAoJHRleHQgbmUg
JG9sZHRleHQpIHsKCW15ICRuZXdmaWxlID0gJGZpbGU7CgoJJG1vZGlmaWVkID0gMTsKCglpZiAo
ISRvdmVyd3JpdGUpIHsKCSAgICAkbmV3ZmlsZSA9ICIkbmV3ZmlsZSRzdWZmaXgiOwoJfQoJb3Bl
bigkZiwgJz4nLCAkbmV3ZmlsZSkKCSAgICBvciBkaWUgIiRQOiBDYW4ndCBvcGVuICRuZXdmaWxl
IGZvciB3cml0ZVxuIjsKCXByaW50ICRmICR0ZXh0OwoJY2xvc2UoJGYpOwoKCWlmICghJHF1aWV0
IHx8ICRzdGF0cykgewoJICAgIGlmICgkb3ZlcndyaXRlKSB7CgkJcHJpbnQgIkNvbnZlcnRlZCAk
ZmlsZVxuIjsKCSAgICB9IGVsc2UgewoJCXByaW50ICJDb252ZXJ0ZWQgJGZpbGUgdG8gJG5ld2Zp
bGVcbiI7CgkgICAgfQoJfQoKCWlmICgkc3RhdHMpIHsKCSAgICB3aGlsZSAoKG15ICRrZXksIG15
ICR2YWx1ZSkgPSBlYWNoKCVoYXNoKSkgewoJCW5leHQgaWYgKCR2YWx1ZSA8PSAwKTsKCQlwcmlu
dCAiJHZhbHVlXHQka2V5XG4iIGlmICR2YWx1ZTsKCQkkaGFzaHska2V5fSA9IDA7CSNSZXNldCBm
b3IgbmV4dCBmaWxlCgkgICAgfQoJfQogICAgfQp9CgoKaWYgKCRtb2RpZmllZCAmJiAhJHF1aWV0
KSB7CiAgICBwcmludCA8PEVPVDsKCldhcm5pbmc6IHRoZXNlIGNoYW5nZXMgbWF5IG5vdCBiZSBj
b3JyZWN0LgoKVGhlc2UgY2hhbmdlcyBzaG91bGQgYmUgY2FyZWZ1bGx5IHJldmlld2VkIG1hbnVh
bGx5IGFuZCBub3QgY29tYmluZWQgd2l0aAphbnkgZnVuY3Rpb25hbCBjaGFuZ2VzLgoKQ29tcGls
ZSwgYnVpbGQgYW5kIHRlc3QgeW91ciBjaGFuZ2VzLgoKWW91IHNob3VsZCB1bmRlcnN0YW5kIGFu
ZCBiZSByZXNwb25zaWJsZSBmb3IgYWxsIG9iamVjdCBjaGFuZ2VzLgoKTWFrZSBzdXJlIHlvdSBy
ZWFkIERvY3VtZW50YXRpb24vU3VibWl0dGluZ1BhdGNoZXMgYmVmb3JlIHNlbmRpbmcKYW55IGNo
YW5nZXMgdG8gcmV2aWV3ZXJzLCBtYWludGFpbmVycyBvciBtYWlsaW5nIGxpc3RzLgpFT1QKfQo=


--=-yd8fF1lRo2b7TA6SqCCx--

