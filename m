Return-Path: <clang-built-linux+bncBDY3NC743AGBBBHJXL6QKGQESOGG6XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B03B2B2079
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 17:29:57 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id q141sf4129124oic.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 08:29:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605284996; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjOPVkcrOIYWma0erqge2Fx2owl6k3aqOK/xYUAZhSLG+yimQ56gzqPb/PaWelvTYU
         x3LosKZrMv/MTSR4BehlJm71LFfCexkL/I0WlMAyy2layWIEIaP48e5A7wrCZlaL1mTU
         Qr7N4leALYefIs4/7zfA11TqErvl26nMsdNFYdka1xtcBl7iPumJJxb3tCoo1apjZIwT
         msYzO5pdWub5xkgBKL7GMcuqFICSDCIdtJmPT6jzT9dDkW0LxQdHBjBCNtLHY9eYBc2C
         am7vb6AN/AuS6nODTh3diteQXrGr2tFNu2o94gqsi4h45/J8WX0fOIyVxgQCsCMHGsJ1
         iKWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=t79jMUUwCqcmUyq4dhy20CRUo6qCKeGmoyxH+Nq/y5s=;
        b=OEvE+ucAV++ozP5g7l/nGTN6APFZ6upgUqOFt69dXyo3i2ilGlHyT0jKe1E2s2R3rs
         MviylnmyHEXxMF75lbQPNwHWP16XoL/YXHLcZ+A2muyBwGj5GXSEm4riR4NUT5N6uLVE
         JxA/ThTNB0+WgHD5M6n6eq7Prs5twIl5CfvZEPmOvMAzu9T4YDvPn0vXmfL5j9UJUfu+
         mcQ0CS9L58DV++aAzmFQSikeQuRI9/CCu5+TMnxh/7gJdC5jMrSgDLuvq3h6N3A+cfj3
         PEeLh8rsIsDZ/MYTy8yHcvy/HwXTXMI6JDcld5bJx9zOUvfWWT+YimfY0jFg0rWgbrQB
         UCpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t79jMUUwCqcmUyq4dhy20CRUo6qCKeGmoyxH+Nq/y5s=;
        b=rPD+82+P/oNRQ9UOVZq0BjU4FTsw4aNMFVJOf42Vd73im+zrP55bDGRDDkCf0omgmV
         dhobhb1eLJtAVWFEUqr6MMnarwZH2wN68AQZlLp17StZD8fnBGeUDYsn+IfToF6eAl3k
         pXkVUaNZshdxQosl+GKXC5xchx8TVGveOT07fyvKh8nvYvzmYFxZiaIweFwcjMJjaiXt
         HKIAYmsMXxBGyZT4aE6GkqvG8P5uc49xUZ1E764vHJkRxCGoLmpQVH2MJ2fnq4a64pt2
         nEbTzmpmpno3+/Jgaf3PP5b/tDW5QueIEnPNq4kxO/23k7j7c44z6LZ5U9zSlGAvwAV5
         d7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t79jMUUwCqcmUyq4dhy20CRUo6qCKeGmoyxH+Nq/y5s=;
        b=j++uRFEfKkznfx7TX/uSPjfAVIJhCFv1ezrqk0IBxObViD6P8FX3QmDEo60DnVMOwx
         PSfWfU5uR6qgwnpssjxerN1uvH2G0/WfYCrs+2i4r+52j6mqtTh9/XVogIBr8T9/Pr+u
         8j/Cgnk+AAt2UwdGJrA4lHkjzll2/uDdxpP/TUq/URocl0QVSJALKhRC4SyxA6mQhrNM
         TNVAvke7ZrFrs/5lu1DqUznyXRqg8XBPoAg3kCkaMuXWnmlwuzRC0W8dS1QXYRN4MlyB
         JAUThKIBmqrVZct8K2Nf2VlJHvlZm1gm2gcGA8dtF1Z2Q3zr9rR6RcSK1HvlZh9xmBUQ
         33QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/Ms+4MRKOH59tckYAOV6upv1XpiFvkIKzk2lXZJr/tbXO6+fg
	VWygGDspmJXbbVJbKiZV//w=
X-Google-Smtp-Source: ABdhPJxqxuzpIhWJaBdZQzI/+aoTqi+cOld4chzpip8scd+4hfXnUN3dZBZ47Vh09RNL+fgCZcC0Xw==
X-Received: by 2002:a9d:12c:: with SMTP id 41mr2164691otu.197.1605284996393;
        Fri, 13 Nov 2020 08:29:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls1694546otm.2.gmail; Fri, 13 Nov
 2020 08:29:56 -0800 (PST)
X-Received: by 2002:a9d:32b6:: with SMTP id u51mr2158027otb.119.1605284995985;
        Fri, 13 Nov 2020 08:29:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605284995; cv=none;
        d=google.com; s=arc-20160816;
        b=nPgCWQ7z6/bxRgDAD0+QdTVDq7EQJE1ck8PBi86uafoKcAKovGBr4QrO0x6obo0ryN
         UeTBK0q5YzMtt1yEbWyFn0FTxcnsQ94Siosee9GAemWL2sqzxfyx4QvWidkmPGgGh+v2
         Ms9pPIdhhG7DISniYrSvSUr2jN+qHp0+Kc5F1RGVe40VAkCX2VRMlFElrUHQsdNjj+yQ
         l6SfQbOqdJ78JE2W7SjuqI1eHRB394tIgMe0Wppec5QFXZi7nw+DDItTyxBw53evtrIK
         o29kMyCZLJHgS6obqs6iMynplA+7t48xQ/X+xHGt4eiHlEwhiR9zq80BhdaC4Ui/NYsJ
         u8Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=wZ7TMDJNmvitK6RbPjwyVkZ48UH8gALcwelnnzQsZD4=;
        b=o0dDMhdDT3deLA1zFWtGZt39LRATYSUAGtyiUv33rvGpkN3KgGw9DsOuTPAPaOaWAg
         vL9+Vpid24aD3nCzvx/5estxGzP2v0ihPX/LTUzSLPFPvnqrvyC9/w2cF88xsPpXy51o
         MRsjKvWQCSoqxPuIsXUtm/z/vexVyjoW+bfacn3TN8G3/nwoDyo0MlJpPZsMaCTeepJB
         UstQ53bY6JTPd1YmqrnynC5FGMMpWTylTM91IXdvHZBZ+UQA6iQ+AL6HSGI5Q/BIdfog
         AUuyx84xvdHQtGDc+WpX6Y1QnvBSUb5xjpA6EIHxRpI6JCTRFOhMBOU2dzF2//15OaPS
         SzDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0208.hostedemail.com. [216.40.44.208])
        by gmr-mx.google.com with ESMTPS id p17si665498oot.0.2020.11.13.08.29.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 08:29:55 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.208;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 1CE8118224D75;
	Fri, 13 Nov 2020 16:29:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2561:2564:2682:2685:2689:2691:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4559:5007:6117:6742:7576:7903:7904:7974:9025:10004:10400:10848:11232:11658:11914:12043:12296:12297:12679:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21939:30012:30041:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: wren57_400b39e27310
X-Filterd-Recvd-Size: 3413
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri, 13 Nov 2020 16:29:53 +0000 (UTC)
Message-ID: <61039da395c8a28444e2f3958d29deda4c0d49b3.camel@perches.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: "Moore, Robert" <robert.moore@intel.com>, "Kaneda, Erik"
 <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Len Brown <lenb@kernel.org>,  "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Date: Fri, 13 Nov 2020 08:29:52 -0800
In-Reply-To: <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
	 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
	 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
	 <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
	 <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.208 is neither permitted nor denied by best guess
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

On Fri, 2020-11-13 at 09:14 +0100, Miguel Ojeda wrote:
> On Fri, Nov 13, 2020 at 1:09 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > 
> > Thank you for the explicit diagnostics observed.  Something fishy is
> > going on though, https://godbolt.org/z/Gbxbxa is how I expect MSVC to
> > handle include/linux/compiler_attributes.h.
> > 
> > The C preprocessor should make it such that MSVC never sees
> > `__attribute__` or `__fallthrough__`; that it does begs the question.
> > That would seem to imply that `#if __has_attribute(__fallthrough__)`
> > somehow evaluates to true on MSVC, but my godbolt link shows it does
> > not.
> > 
> > Could the upstream ACPICA project be #define'ing something that could
> > be altering this? (Or not #define'ing something?)
> > 
> > Worst case, we could do as Joe Perches suggested and disable
> > -Wfallthrough for drivers/acpi/acpica/.
> 
> I agree, something is fishy. MSVC has several flags for conformance
> and extensions support, including two full C preprocessors in newer
> versions; which means we might be missing something, but I don't see
> how the code in compiler_attributes.h could be confusing MSVC even in
> older non-conforming versions.

I believe this has nothing to do with linux and only
to do with compiling acpica for other environments
like Windows.

From: https://acpica.org/

The ACPI Component Architecture (ACPICA) project provides an
operating system (OS)-independent reference implementation of the
Advanced Configuration and Power Interface Specification (ACPI).

It can be easily adapted to execute under any host OS.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61039da395c8a28444e2f3958d29deda4c0d49b3.camel%40perches.com.
