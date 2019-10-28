Return-Path: <clang-built-linux+bncBDY3NC743AGBBG6Z3TWQKGQEIJTSYTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8CE77F8
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 18:59:56 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id d18sf194195vsj.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 10:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572285595; cv=pass;
        d=google.com; s=arc-20160816;
        b=c869EfzLqg5uAzDO8AGcI1PwI8Je8fZVK7rAd4ci1ZgzsC/op+3kVxuLkIk5kdFVaR
         IJZrxirZ6ZbOPzqJC9kNF6u+UYhZlV9A5DZ2+kbVkQRDg+irjaTbxAdTA1KNlawfgRrh
         ZJMhE1Nl1dCsB604TuRXMwsbHPjCaS5bHqlYkWVtJFWken/+DgxrkJllLh4fiaBWxvE3
         2NmLTQgIzFAs1rv6pTnhKy3ToAVsVHEzy/Y1CrN97/nA5ZJE/1Wh3RiEgtsxxeFrAX5A
         YHIpdYna4rc2IvmD0jIQpBcZU2uxd8BIEh2RZsG/V891FRGfpXe+n6R1ma/uY2siekO0
         tppA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=qLAmwdWxHKPh3VE99a5Zabe9zNp9WnvJSqVQzz2Zkn4=;
        b=GW2dnIecKYHdArMEW+rR+CUl1U/G2F/EZsD3hy9m1PWkykkvlDWTLm7RXuzuHNCsBi
         QsrrBmF5Q3ZMtZ25MOkT+zZVOq9ydIlGugtmIyaKExM2AQx2inpRJNAD7NG6MPZNBJfp
         ST9COXp1NTYXvrCMZDxfIK/uk/gYfjouMa2Zlb40fRZT0UiK19NzfjbLwOzIo2W6e2M+
         m52TWNVC9E5sXlt9Y7W5Oghel4RfXUzsz9Qki/LFzhG8UJH1liaK33EEfR5cV6pGZWJ0
         Z136u5scg/7v0N8zINM1w5/ZhQT9M79aNqQhImCETM7iShduLdYJxHcV286kVfm/RBVS
         Iq2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.68 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qLAmwdWxHKPh3VE99a5Zabe9zNp9WnvJSqVQzz2Zkn4=;
        b=cWJIBgAV52s2U/yRcvljVDqdq3KaxNmC5SsZfLtvdtjXIUfBNq7/LIkh4KMgsMczo3
         cTSirIt5ZMrXAvJbVGpS8fhf1ks9hIb7i5lTSdb0UnYoa0vETX4ZrgVOdANBQuUNKDkA
         aQ2WVN2/J3sWaJcPGEYirBF3PSKs5dtszdUU3tG4TvsSinjAuW4D1g2S6tBjdf0NR6pO
         hkwwadKowxqhN9maBNqng9SNR2Y+e2yI67ICkgMECmG/GIDL00d5upiwk262/vXLpoei
         mAZ4sWT2hSOxEmmVJokRN2Iy00Tur//3ckxPSeimoAQGVbF3Cpv69TSGKXo9oUe/x7A9
         Cmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qLAmwdWxHKPh3VE99a5Zabe9zNp9WnvJSqVQzz2Zkn4=;
        b=aaRCL8l9gGzeA0RmvoGy4DDDVjtmTXluHCu9ZzN6UnaPC0gzxnJQS3jEF92nTDSZtX
         ltda+N/xRXpJjM+ghrJ1m0YcIhVuwF4I/vfxBJ+Yk9nL4sScDuomI0iSS/2+i1+DUsQY
         gPskBww4d0Ac2+SCWVg7yG9uTfUbSRj8qe42X1NpCanFZOxLzgCYxl0HqFWif0i2+/xy
         nfbrqqyPMYhEVBpr6cO83YZRBXmcGc6iP74qvakYES1tbVtUZXiAeg/+XbcFqWhyZSRj
         /M0m87IZu/MnJi6LuH9C4vD/ZC0LcOhyN6JHW4y1IUE3wqKeGvpQaeTsRoE82hkLYzoL
         p3mA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8FLj9XDz0wWWiKRxaSllXLEvGLMrhUmlJmR5+/nD71AeZuYDx
	hA7jiZwm0mef6cGtzhUCTmg=
X-Google-Smtp-Source: APXvYqzxTlQoQ0heamop4yd33Sdu7M7H8olmjQVxHOpo4nKBsXHDNfEcQ8wsnyzA/N8Ypwh39y1chA==
X-Received: by 2002:a67:b64b:: with SMTP id e11mr1576354vsm.175.1572285595256;
        Mon, 28 Oct 2019 10:59:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ed0f:: with SMTP id l15ls888041vsp.12.gmail; Mon, 28 Oct
 2019 10:59:54 -0700 (PDT)
X-Received: by 2002:a67:f90a:: with SMTP id t10mr8756689vsq.166.1572285594879;
        Mon, 28 Oct 2019 10:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572285594; cv=none;
        d=google.com; s=arc-20160816;
        b=CR+O6GEB9UvBIVijkHIXa4m1vavaTfaQHwL++P1Ms54Spon30ao8IcBdbFx9+0r+++
         r2BYktsWSOkszeELxex0cf4VwBnBjgwvQIdpSeQEozmCOF2NRpT84piDPfL11Nc86pbW
         iRhfgPD8GQTKqJd5uDJ5kIzwuot9IpNz3v4tjzkohvuI4uqRT6VXDEUt2GV5verJjT8G
         TrKEQ0z4k92oOWUJBS6sI7pTyKwSD0UZBy32Ciz319TY72GBz3kTAfhfjUq0eAQDo537
         b9LecNyx40sGSJlkjh97ESbBkDZshcn1e2Tc/3OlLzsbhAGk8pIj/CSs/VcEBqZ3/sP8
         5sFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=kLFxOFqdpfD97DffmBLVTqLbSi9LJhONTmJfTcEaTKg=;
        b=kS38zn+yw+WstgZrxFk122jI3Jbe8VyNA+t9odloDSof7BWhh6Ww8Txr9PVUJ82Kqq
         3e3nUAprM1fhgwb/zN5R/dQP1ja44y7cevc9bJjb/pQgvJCweHxEDueF+823qYXRdgtL
         3HoAKr8eLARPXTeMYhff63cI0vfA0oEtZozmuUw2qURCJhY6CNOOfSDjoum8KUF9Eaga
         jCo69h2JgkZcQsJGTfJTBlHCwXnh7gVpCqPpHp4Tkv4gRrfihKu8DtK7vIdqIUltVpdZ
         uwDT4fxf3dgulV/YliBBtiO6g18/5pnWLgke7nUt/mVtSYS7Kfe2+/lzDNZ39SaG9B9U
         9SBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.68 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0068.hostedemail.com. [216.40.44.68])
        by gmr-mx.google.com with ESMTPS id o206si768135vka.4.2019.10.28.10.59.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 10:59:54 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.68 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.68;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 559525DD5;
	Mon, 28 Oct 2019 17:59:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2895:3138:3139:3140:3141:3142:3280:3354:3622:3865:3867:3868:3870:3872:3873:3874:4321:4362:4605:5007:6691:7974:9040:10004:10400:10848:11026:11232:11233:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13161:13229:13255:13439:14096:14097:14181:14659:14721:21080:21325:21433:21451:21627:30051:30054:30070:30090:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:27,LUA_SUMMARY:none
X-HE-Tag: room92_5654232a53661
X-Filterd-Recvd-Size: 3478
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Mon, 28 Oct 2019 17:59:53 +0000 (UTC)
Message-ID: <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
	 <luc.vanoostenryck@gmail.com>, linux-sparse@vger.kernel.org
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 10:59:47 -0700
In-Reply-To: <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
	 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.68 is neither permitted nor denied by best guess
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

On Mon, 2019-10-28 at 18:37 +0100, Miguel Ojeda wrote:
> On Mon, Oct 28, 2019 at 12:43 PM Joe Perches <joe@perches.com> wrote:
> > diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> > index 72393a..b8c2145 100644
> > --- a/include/linux/compiler_types.h
> > +++ b/include/linux/compiler_types.h
> > @@ -5,27 +5,27 @@
> >  #ifndef __ASSEMBLY__
> > 
> >  #ifdef __CHECKER__
> > -# define __user                __attribute__((noderef, address_space(1)))
[]
> Just in case: for these ones (i.e. __CHECKER__), did you check if
> sparse handles this syntax? (I don't recall myself if it does).
> 
> Other than that, thanks for the cleanup too! I can pick it up in the
> the compiler-attributes tree and put it in -next.

Thanks for asking and no, I did  not until just now.
Turns out sparse does _not_ handle these changes and
the checking fails for these __<changes>__.

sparse would have to update parse.c or the __CHECKER__
changes would need to be reverted.

Perhaps update parse.c like:
---
 parse.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/parse.c b/parse.c
index 48a63..4464e 100644
--- a/parse.c
+++ b/parse.c
@@ -549,13 +549,19 @@ static struct init_keyword {
 	{ "aligned",	NS_KEYWORD, .op = &aligned_op },
 	{ "__aligned__",NS_KEYWORD, .op = &aligned_op },
 	{ "nocast",	NS_KEYWORD,	MOD_NOCAST,	.op = &attr_mod_op },
+	{ "__nocast__",	NS_KEYWORD,	MOD_NOCAST,	.op = &attr_mod_op },
 	{ "noderef",	NS_KEYWORD,	MOD_NODEREF,	.op = &attr_mod_op },
+	{ "__noderef__",NS_KEYWORD,	MOD_NODEREF,	.op = &attr_mod_op },
 	{ "safe",	NS_KEYWORD,	MOD_SAFE, 	.op = &attr_mod_op },
+	{ "__safe__",	NS_KEYWORD,	MOD_SAFE, 	.op = &attr_mod_op },
 	{ "force",	NS_KEYWORD,	.op = &attr_force_op },
+	{ "__force__",	NS_KEYWORD,	.op = &attr_force_op },
 	{ "bitwise",	NS_KEYWORD,	MOD_BITWISE,	.op = &attr_bitwise_op },
 	{ "__bitwise__",NS_KEYWORD,	MOD_BITWISE,	.op = &attr_bitwise_op },
 	{ "address_space",NS_KEYWORD,	.op = &address_space_op },
+	{ "__address_space__",NS_KEYWORD,	.op = &address_space_op },
 	{ "context",	NS_KEYWORD,	.op = &context_op },
+	{ "__context__",NS_KEYWORD,	.op = &context_op },
 	{ "designated_init",	NS_KEYWORD,	.op = &designated_init_op },
 	{ "__designated_init__",	NS_KEYWORD,	.op = &designated_init_op },
 	{ "transparent_union",	NS_KEYWORD,	.op = &transparent_union_op },


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19fd23e98bab65a1ee624445193bd2ed86108881.camel%40perches.com.
