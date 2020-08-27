Return-Path: <clang-built-linux+bncBDY3NC743AGBBDV3TT5AKGQEHKDJ4JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D612253BEC
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 04:42:23 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id 18sf1661533vkw.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 19:42:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598496142; cv=pass;
        d=google.com; s=arc-20160816;
        b=gUX9nULjMqLxQt/lXIFFn8k+r4mRqyrBwExebJLtkbPXm6mAfpS7SR0Eik2Ys7wlnO
         WgJ3rQRfq/XJYpUs/oGWLRhO0b1AmHLxF0DZWeOtqRWvyZWSTtmbSqJnC1E9wtFsXJMY
         VNpaT8U+PKS4R+9PxR08NburZ++njrhLoc9uOJYUpk+OMJeXYqq1klerj/3WfpnHadRQ
         hU87zLewU/+JkCVeiME4Lps1MlErW8PuKCHergswMI2TGbifarTNVQ41yIgugnYfu+lD
         ntZkMQ+2qGlPBeVf8f7atl9fCA9TVJ5OMNxg26oDQ4UuaBy7Q0CmL5FpsMINjfx5y76N
         emVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Y868RbmIE/u7k2eS33ELkdiYvWZ7r7DTndDBecr131M=;
        b=lUHh9aQOhdEgSBeb3Zo+OIOPAFIzG0PSrvxb6KUn/01BsfNqtFfsL+rGtHL60Ugguu
         4+kuCXt2ivZhE+sn14aWbb1RpNwlyASuNsXWM7Z2rzWP/nQAV0Pv1yuCGumSlvoMXOgT
         5hzigJxV0KznyK0H9xNMM1Zlj2B6UnsYIFOXzhsgJFddzbbijS2igu0wAzoOGLbCQch/
         rlyBErqBs+yWvWFXQQ1dkK580RjnjhbqAMnNoBLUnIe24N7aWgeJe+5rlSQL1tN/dMti
         wcMiUJoMaJucxlT3dSBoAkVY5xa4FwpplqhWRHrS0wvGcjVEBGO7i+ymhgcJQ3jDlmBt
         pGCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y868RbmIE/u7k2eS33ELkdiYvWZ7r7DTndDBecr131M=;
        b=CuhXX2dzJz/0M2Yg/MvhTV9tL8YODrp+Smkms3JUaiaQT+F2OoCObrNOlOs9zeobVe
         Icwa2ZQq+0MBIJF3QtGtapLT9cjIUqw6P7aSIACCbNORfWeTqysj1GXND34FIiTirCQ6
         K5FDDCPYRomO41qUaIHYtKSu05inTL3S8NOVegg5WZ/RDrjEOPeQGXJDvS7Z5r/dgMLh
         U/QMhi0mAAW6wJIuHCgaFS1XxyOT4pJBFs9M9Nl0wtG7gNiLaIpoZLyklBYVMdvRmIxB
         IfRmXF9hwIOt5C/JkRuKXmkPb8X0SQkZRr4l2gQSxQ68T+SkzKh8xJyvnRGlDyXhkABA
         oglw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y868RbmIE/u7k2eS33ELkdiYvWZ7r7DTndDBecr131M=;
        b=t57qbt2RaXsjlI+0mV61aFSYchxt/lVOKAhoxx0W3/HboLF6+ugvcBAuNrs48T1F6s
         UlL2Wpz+tCLSHP/tg35U2wt4/wP4q+Ug2m7xWrImwYXXlRWDjvBsslU1yjoP/MyYP60X
         NS56aydIjS49N83zxhnA50/e+a4bY8jON/ZmNL8mPFGxBgmvI5qdFA+g1Ge7u3fGxmY/
         gyFKpyiAySN7OiIdyM+kWBJAEK8AyQ/DFf3Jm/d+/aqWTYw2jh9LnXu/WQKZPxWYhQQ+
         Sd4LUo6xBOjFge07uB7pBlTy9e65IgiVfbFgU1HaQchd5p6LV3sB+xl+Gk2Oq8DEniln
         qc7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g6rSxBFiowDwZcW3n7LnxiquocV0bAnjX5gRf1lAD05UmsXqL
	it/glmWAOp8N9mqzheaAZdA=
X-Google-Smtp-Source: ABdhPJy5pj7xC7K5r1pz/2omdtKfdsAy7vkHKEhSR7qNjVXNUcKOGk9bNM5rnjc8oPIniAgi0Ga+YQ==
X-Received: by 2002:a67:e45:: with SMTP id 66mr11277531vso.191.1598496142104;
        Wed, 26 Aug 2020 19:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c416:: with SMTP id c22ls92748vsk.4.gmail; Wed, 26 Aug
 2020 19:42:21 -0700 (PDT)
X-Received: by 2002:a67:87c1:: with SMTP id j184mr11352353vsd.8.1598496141736;
        Wed, 26 Aug 2020 19:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598496141; cv=none;
        d=google.com; s=arc-20160816;
        b=XeEMBIeujXJ9igw+TbVrIp4twMoAQ+0C+JpYlvU8upn662Ya3En54co0KJkKx9Zhih
         4HHvkC6lpvlOoAMhCa3qB14TprEbrf3PqKy/VA7eUz3O7WwgIaSfOrP5TfuqX/CEFahA
         qwhrFQWVgeW1e+mzgDf3QXxAUb00WRet1FCXwxhYdKwi8WAyKPGjoiIbz6+euR13QHPB
         eCV5gcbTtEL5gxK+OPyRJk5GLs0W7pcBsjzrtukJ6Efw/tTKPi8vcjYLIBcGlXflFQOW
         jnhc7S7ksCvr1E//HC9fKKQWeIOZdndPD/9SGcJEoG++XxdTrmuuG4Bv8hXCcqOSH5wc
         ZPfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=FLM5hPmEKHA++VJDKqG0ihuudVTpIxowblH9M0xFbbw=;
        b=K8xgyaQnHU3ry9C2sNs7EdX7T5YupAUaLzoYFwmPyMtEYVeFwQalM5sbiB+ZEPOba9
         OWUYTNimnhheqNDO3QRWePEpYnjhb4BedWebX2zLatL0+hBefqfCDx6odJ3tfPn5UZT7
         VTZAN9KeMxwmXQKdNgpGXuU1rUHK8hGzR3yKkov0Kitnh3INwmrdjiIHD/EvmPoWjlh+
         lL5MSxpj2z3PQlU45dtcUvxJFdMkl7yDxK0PSbNp9mOcafv+/RilR+LEgPxdTuzZYZ8C
         0yydgWxPJXH4Lyjld3m7ocnfZB0JvgwuSY4dJg32r4pxMV3eRl2RY+BSFavAOytOcLvc
         lDPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com. [216.40.44.94])
        by gmr-mx.google.com with ESMTPS id q1si73381ual.0.2020.08.26.19.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 19:42:21 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.94;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id CFED71801DBD7;
	Thu, 27 Aug 2020 02:42:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:69:355:379:599:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1543:1593:1594:1605:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2568:2629:2682:2685:2693:2828:2859:2898:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3653:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6742:7903:8603:9010:9025:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12683:12740:12760:12895:13149:13230:13439:14181:14659:14721:21080:21451:21627:21990:30054:30060:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: actor37_421792427069
X-Filterd-Recvd-Size: 5155
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Thu, 27 Aug 2020 02:42:18 +0000 (UTC)
Message-ID: <e84ea9d311fe082af8a1afe2aba48303ffbb1bf1.camel@perches.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, Andy
 Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, Sami Tolvanen
 <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,  Alexandru Ardelean
 <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>
Date: Wed, 26 Aug 2020 19:42:17 -0700
In-Reply-To: <202008261932.FF4E5C0@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
	 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
	 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
	 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
	 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
	 <202008261627.7B2B02A@keescook>
	 <77428f28620d4e5ecad1556396f2b0f8f0daef41.camel@perches.com>
	 <202008261932.FF4E5C0@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.94 is neither permitted nor denied by best guess
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

On Wed, 2020-08-26 at 19:33 -0700, Kees Cook wrote:
> On Wed, Aug 26, 2020 at 04:57:41PM -0700, Joe Perches wrote:
> > On Wed, 2020-08-26 at 16:38 -0700, Kees Cook wrote:
> > > On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
> > []
> > > > OK, then stpcpy(), strcpy() and sprintf()
> > > > have the same level of unsafety.
> > > 
> > > Yes. And even snprintf() is dangerous because its return value is how
> > > much it WOULD have written, which when (commonly) used as an offset for
> > > further pointer writes, causes OOB writes too. :(
> > > https://github.com/KSPP/linux/issues/105
> > > 
> > > > strcpy() is used everywhere.
> > > 
> > > Yes. It's very frustrating, but it's not an excuse to continue
> > > using it nor introducing more bad APIs.
> > > 
> > > $ git grep '\bstrcpy\b' | wc -l
> > > 2212
> > > $ git grep '\bstrncpy\b' | wc -l
> > > 751
> > > $ git grep '\bstrlcpy\b' | wc -l
> > > 1712
> > > 
> > > $ git grep '\bstrscpy\b' | wc -l
> > > 1066
> > > 
> > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
> > > https://github.com/KSPP/linux/issues/88
> > > 
> > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> > > https://github.com/KSPP/linux/issues/89
> > > 
> > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> > > https://github.com/KSPP/linux/issues/90
> > > 
> > > We have no way right now to block the addition of deprecated API usage,
> > > which makes ever catching up on this replacement very challenging.
> > 
> > These could be added to checkpatch's deprecated_api test.
> > ---
> >  scripts/checkpatch.pl | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > index 149518d2a6a7..f9ccb2a63a95 100755
> > --- a/scripts/checkpatch.pl
> > +++ b/scripts/checkpatch.pl
> > @@ -605,6 +605,9 @@ foreach my $entry (@mode_permission_funcs) {
> >  $mode_perms_search = "(?:${mode_perms_search})";
> >  
> >  our %deprecated_apis = (
> > +	"strcpy"				=> "strscpy",
> > +	"strncpy"				=> "strscpy",
> > +	"strlcpy"				=> "strscpy",
> >  	"synchronize_rcu_bh"			=> "synchronize_rcu",
> >  	"synchronize_rcu_bh_expedited"		=> "synchronize_rcu_expedited",
> >  	"call_rcu_bh"				=> "call_rcu",
> > 
> > 
> 
> Good idea, yeah. We, unfortunately, need to leave strncpy() off this
> list for now because it's not *strictly* deprecated (see the notes in
> bug report[1]), but the others can be.

OK, but it is in Documentation/process/deprecated.rst

strncpy() on NUL-terminated strings
-----------------------------------
Use of strncpy() does not guarantee that the destination buffer
will be NUL terminated. This can lead to various linear read overflows
and other misbehavior due to the missing termination. It also NUL-pads the
destination buffer if the source contents are shorter than the destination
buffer size, which may be a needless performance penalty for callers using
only NUL-terminated strings. The safe replacement is strscpy().
(Users of strscpy() still needing NUL-padding should instead
use strscpy_pad().)

If a caller is using non-NUL-terminated strings, strncpy() can
still be used, but destinations should be marked with the `__nonstring
<https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html>`_
attribute to avoid future compiler warnings.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e84ea9d311fe082af8a1afe2aba48303ffbb1bf1.camel%40perches.com.
