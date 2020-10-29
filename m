Return-Path: <clang-built-linux+bncBDY3NC743AGBBOXL5T6AKGQEFSHHJ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C3A29F6FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 22:35:55 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id z9sf2571319qvo.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 14:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604007354; cv=pass;
        d=google.com; s=arc-20160816;
        b=McxiyL6J24oTmcZOdblay62kb9Hq1QOOXKKE6OyweoQRnPWbjcqmHffa7C6uQlszF6
         192tp6YRKsO7LFS0imk+RjxxQbJU6ffi4m4iaz0PPy4vrC/EOhRboPb1jjwtrPYR19hq
         5ILVwonPpYzzEke2TX6y0sTl5Wo2RKwvDQJk+TnWJrOnlJpl5z9nJJynjuJ9MkCZj8+L
         epb0g+86e9qgbyQVQGKF3L7qSEfRaeKwGheS0UabgmHDoTdkZfKYBFANdR8lBnhyFLBQ
         /DzXTEvV1QpAQKq7XhvpPp1hj2/lG8XvynqUnHgQB1UfTpqGi3dVnp2VlMKl9rXXq/Af
         HjQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/1DAlF8Woh4iSzsPf8MnndKO41BAaOSM9eTzxKF6RnU=;
        b=gyn/BQiQ/TOXQsHcA9xPbVVPcycnS1DjfxTHCbFZCv6EBp8mrTzmzOhr4edNJLOSzB
         xneJkwFcKzqLEpmz0g6PfTArKmMhPnnZ70xW3xy/uDMDGcI++xkni5bEXQlhVBOQI4Dv
         wtnCkfqUztDdU07UbUPxWzsMOTFMtPLVIjHc1QLCFNohTW7gZx2cUqKBiOvb8fxTPbun
         47hmjrnmWzcter4z5mgHQjADOu1cglowHQwjFSiRS3m6eyw+sqz3IlOaNWOHwPjrQBcD
         uVA2uzznY7uBFHD8ZMi17QyfhwGz+yVY0hgutX+pIQqP0vREiYaIoGJtR/HlLuPP2TBO
         p49w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.232 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/1DAlF8Woh4iSzsPf8MnndKO41BAaOSM9eTzxKF6RnU=;
        b=kKLhb7SxI/a5kUFcpvZwNI4AWOEi4+/4O+LcL25Wk1PrzAC2VWkGGBaZRR6GT3o3qP
         WK+/gXpDPXMB/fnh4GDobiNiT3LTrvZsYCRM6DbA+tnndwIJF+6h4gx7BCpdHmsAKbYV
         bUYB4wunuv0RtG4EqQ+BQpfkAjbOUBzpqG6eHmcz+1vTz1U09xLJJfDs1qwXcdQ9dTnN
         BlqZ7YkYxkvabHoNWGBAl+WsgRdwf9QJTju1PDCtWuc9cE4TeCarAmze9U4IFiQLN58y
         351A+vzhNo9irIrWoxxDVXEqjUtIzZpG5ejBrbGZNUMCL5L0ntysN0MToBAbyhYHG3Mo
         JNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/1DAlF8Woh4iSzsPf8MnndKO41BAaOSM9eTzxKF6RnU=;
        b=HXx63UWXuyRxXFcVV8BNJA4We4sMc+Rm2OeSi6/zkrYDR/IVgUoZfkZVt2nWGWFsOM
         MCYARLuef5dyOS+XHF1dESD4jTsAP8oTBIAx5Xofx6f6GOeh04cL2ZeMceD3bRk4V/R3
         LwP9+F0mDPItwr28RtGYlZ1nX40AwrK0NQHcSNwyx5LrJMRouc/Y52OiPCD3mfVjZjYA
         hm4et2P4j80hcF1OTOOXys0f921ZHD0AAsqdmT4vO4AchZY5c0QOCgwsVzmfslDDuxg8
         G3d9Di9gGpeXZPkvzAo9F+FGRhuZ3CO36b1xGDC8tl8fCv1HuhTGnKm0zqUbiRfhit83
         +AOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318qosRwexLbJNz/li9tD1V7kfiz6KLPc1M3xFcMBAvep2LOZGA
	KYLLQNdIe7y3P/M+aclkBbw=
X-Google-Smtp-Source: ABdhPJwpjqcnJN2MF8hdXdTrY21NGfqgeWAa7Q4ugbd4/YoZwqOoOoOOjOqc2XXiHeuJxNfjfELO7Q==
X-Received: by 2002:ae9:ef56:: with SMTP id d83mr5823032qkg.83.1604007354798;
        Thu, 29 Oct 2020 14:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:10:: with SMTP id j16ls2087031qki.3.gmail; Thu, 29
 Oct 2020 14:35:54 -0700 (PDT)
X-Received: by 2002:a37:5904:: with SMTP id n4mr5703491qkb.364.1604007354342;
        Thu, 29 Oct 2020 14:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604007354; cv=none;
        d=google.com; s=arc-20160816;
        b=0lCKe6kld5mc5/Zv23lLh7iDAvm/xmFN+BKv6QkAoM3EoQcJZPeUaA/b58Fos6ltxT
         LtPOSz8HFvn3xwXO8o2ULE+A9fhMupoG4uxIzvWdBFR9J1tXcwO3u+isGbTfS/vEHzdf
         xqEuHcmkNrK8SL0xdSFTEMCOTiorydU3pLoHNeDfPblbT2Wi+z8okyy1gH468kq7x3p0
         loqVRaysZM9aGOkJSWFim7KxteNqhPdXmony5NKpCIFG6UYl3xMUrYksj96Fga2kA6dC
         WvOGv/xXJYEvA1Iz6eNbrerUCpoZGm4lI+sShjiOIQ+dopLwKXMs1F4IFJGwBa2Dr26k
         r0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=2de1wluFkbTwSH2V1QPeAyG/fyi23y+A3v1a/lH0IpA=;
        b=k65xBmcnTgpwEcMglpJh4Xa4HU6H0shgiu6UN1GbRGOpcHWIoNeevhk7CVjYj2ZcsO
         M6n/Ed8oG4XOz61U5wJUoeiN+QyLDfOwPGMUCY0Udo46d/vK0pdstJ7Zr4e+kQnGDHSn
         DHNkFk65t13I1c6lQRyepz9ZiGXymHajLbsZmJhhGSw+QrH6Oz2UfdIj8G3X02V51i8N
         3p+4zrO9Pa+jXe0KBN7lF40ZD4DQ0CS4K6BA3DgkbW2t7kAR6bmEUEssKcNDmY17dvDO
         1IBN6p3auiCKABJGpuPYA3AWZIulYgpF/D59Cp1upA7awdydJGyuCw246Lyv7xiE2AJe
         xqrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.232 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0232.hostedemail.com. [216.40.44.232])
        by gmr-mx.google.com with ESMTPS id m3si320188qkh.5.2020.10.29.14.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 14:35:54 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.232 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.232;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 97E28837F24A;
	Thu, 29 Oct 2020 21:35:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3871:4321:4384:5007:7576:7875:8957:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13439:14181:14659:14721:21080:21433:21451:21627:21990:30009:30045:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: arm95_560f16827290
X-Filterd-Recvd-Size: 3499
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu, 29 Oct 2020 21:35:51 +0000 (UTC)
Message-ID: <f810a6db9f617208302953c7cf837a8f8dd0e39f.camel@perches.com>
Subject: Re: [PATCH net-next 03/11] rsxx: remove extraneous 'const' qualifier
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann
 <arnd@kernel.org>
Cc: Joshua Morris <josh.h.morris@us.ibm.com>, Philip Kelleher
 <pjk1939@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, Jens Axboe
 <axboe@kernel.dk>, Nathan Chancellor <natechancellor@gmail.com>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-block@vger.kernel.org,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 14:35:50 -0700
In-Reply-To: <CAKwvOdka+UFvwntx-Dcx3oX2nJEkcdo+krm8gu016vPVBF8MBQ@mail.gmail.com>
References: <20201026213040.3889546-1-arnd@kernel.org>
	 <20201026213040.3889546-3-arnd@kernel.org>
	 <CAKwvOdka+UFvwntx-Dcx3oX2nJEkcdo+krm8gu016vPVBF8MBQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.232 is neither permitted nor denied by best guess
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

On Thu, 2020-10-29 at 12:34 -0700, Nick Desaulniers wrote:
> On Mon, Oct 26, 2020 at 2:31 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > 
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > The returned string from rsxx_card_state_to_str is 'const',
> > but the other qualifier doesn't change anything here except
> > causing a warning with 'clang -Wextra':
> > 
> > drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
> > static const char * const rsxx_card_state_to_str(unsigned int state)
> > 
> > Fixes: f37912039eb0 ("block: IBM RamSan 70/80 trivial changes.")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Perhaps this should also be converted to avoid any possible
dereference of strings with an invalid state.
---
 drivers/block/rsxx/core.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
index 8799e3bab067..f50b00b4887f 100644
--- a/drivers/block/rsxx/core.c
+++ b/drivers/block/rsxx/core.c
@@ -390,15 +390,27 @@ static irqreturn_t rsxx_isr(int irq, void *pdata)
 }
 
 /*----------------- Card Event Handler -------------------*/
-static const char * const rsxx_card_state_to_str(unsigned int state)
+static const char *rsxx_card_state_to_str(unsigned int state)
 {
 	static const char * const state_strings[] = {
-		"Unknown", "Shutdown", "Starting", "Formatting",
-		"Uninitialized", "Good", "Shutting Down",
-		"Fault", "Read Only Fault", "dStroying"
+		"Unknown",		/* no bit set - all zeros */
+		"Shutdown",		/* BIT(0) */
+		"Starting",		/* BIT(1) */
+		"Formatting",		/* BIT(2) */
+		"Uninitialized",	/* BIT(3) */
+		"Good",			/* BIT(4) */
+		"Shutting Down",	/* BIT(5) */
+		"Fault",		/* BIT(6) */
+		"Read Only Fault",	/* BIT(7) */
+		"Destroying"		/* BIT(8) */
 	};
 
-	return state_strings[ffs(state)];
+	int i = ffs(state);
+
+	if (i >= ARRAY_SIZE(state_strings))
+		return "Invalid state";
+
+	return state_strings[i];
 }
 
 static void card_state_change(struct rsxx_cardinfo *card,
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f810a6db9f617208302953c7cf837a8f8dd0e39f.camel%40perches.com.
