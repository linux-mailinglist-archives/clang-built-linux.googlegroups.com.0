Return-Path: <clang-built-linux+bncBDY3NC743AGBBAFTW36QKGQEINP5MLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id E62042B0EFB
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 21:22:25 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id z68sf5154994qkc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 12:22:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605212545; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMhVYrEJwwj6Ht5HWOGdfUYH5hb1cpOqwrWbtLkIHneHDa78bcBstKGjL9arKyGIe2
         E6tHrbp8otK3tTBQLQMmYHxbUJBD8de6F3hU81bwh95E4O8hGGeW28hBXZRCRZDZfHxa
         zz+CZGtWiFJfPGJf3ghHipJ6Sq9F1CNoYbmBz0CEKl0nb/E3j2i9LaueOC+ZCbQrme29
         ccgY1SfO4Q3h7zd6qcR3nKHUSg4seFsyZTPj42ptCwYY7YR3haKN/Fk1DfoEvtDyrLsy
         TUp0G0joUJzcGkuUmzi6c9q142A0jYDySu8QQteruxHoVpmcEWeh3UTxQSdzExkWqXBc
         2T3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=rByZVfv/SMMUH12KYhEUwCvVPF/ldPEpfUptzNq211A=;
        b=kiJK69u+mQhfAypq5V1MlmMGJHMpGWsrHbL19OPeFiydLiObjyXjcZXHnobIRdfXj5
         YnYCf8X2DBCb6rrx5fyTaNrMFKFXWSqHD9dKQ3vMZQqh93VqcJCRo6bdCbgxEJk5yeSa
         ilGYIuJcGyGg8WN4ziit0b63VtuYf//1iEGqsyMaGmU+qdUwIcr8rxDZ1OU9JxT2Gz4d
         fgi5V2NSJ2GXGdNKqXAewsFY4WCWlS+olWurGfN/KBx25XlSUmEqkvbIsRbDBTjpQWUS
         rugVY/RAPRkPRDV8Gjdbdsjzw8mkD2nbzFlwLUKsoLhLUPhHlalKrp5DA0a5qs2JTxpb
         oKaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rByZVfv/SMMUH12KYhEUwCvVPF/ldPEpfUptzNq211A=;
        b=bOXzoQrvqwBmDm0vunCQZsYK3Cd28/jdVsxrAdmD7SbJO0vmLiOxnM8TdZg1WdwElU
         Jl95sdj0xH/gMqkGegbQsrKPvEfVGRHKjwBuiMT2YGDXsya1Susufjl0Qgjd2ObAWRrp
         3NZ9/dOOWq240VnT0zXD1BuscOMG0k9SUxOoWT9v7BwE9vCrTwOPgqZQRMI+fkcf3aJj
         nuZjBYamjDLTry3+s5/fCYsChcLvGDasQnhuPnm9W+F3MOQFflmDrkAXogWix9te+rhu
         UxxMuELnZzWa1CJG/RNB4JTRNyezKRM/YRTCLLaMYzkDJz22ujMMktFZrJqeqNxS36ke
         f+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rByZVfv/SMMUH12KYhEUwCvVPF/ldPEpfUptzNq211A=;
        b=kMKPXAlXpmZnGi51CvjmIovo9YGiVbYy7BoAwiVjnR5GRUee2pcOWEyh7dkHrXDBTS
         Nw1XKoHYHSUsFQB8fHG4Hy8Xud6Xmbhw8IYQjQw6ljPKQw3gPADbxCyhBBxa8XvaKJbN
         0YqDNsQ4v94kdoO2tsY1hycklHy+UT8KkwSg4K/DjcfR1c8ByhgFSCq6Dj6hAiQVscjN
         h8auMm18taUvEAwbwm5oaBQSSvA6R8el5LMtvfPrqKBvW1IuXsgLOj74Kh43ILCcCQbN
         G+H+TctxjKkfCw5fWwA3kxgjuK1an5Q5Wfnjdz+SvNmVfIYOMwwagHUeQWOVSWNz/eL3
         PQCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ycZhIrbKDes5q5suyP7TOODKM8glUL3E6EzAmuF8dO8lp4jeX
	lNTCUCFnuMPU4eBUCmM/j3k=
X-Google-Smtp-Source: ABdhPJwejS29zeDMAxn+e240nSIqAnQCgkLT9Bux5Xz7ssTWkJkttFZ7MP/nCyfO93MypdgzzDnVVg==
X-Received: by 2002:ac8:4e4f:: with SMTP id e15mr1016618qtw.110.1605212545030;
        Thu, 12 Nov 2020 12:22:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:249:: with SMTP id k9ls941997qvt.6.gmail; Thu, 12
 Nov 2020 12:22:24 -0800 (PST)
X-Received: by 2002:a0c:baa2:: with SMTP id x34mr1485066qvf.23.1605212544400;
        Thu, 12 Nov 2020 12:22:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605212544; cv=none;
        d=google.com; s=arc-20160816;
        b=zAzmCTQZx2SkfXrg2PKkMMqwzJjmjrRg9zHY0jylCQG3LVuIPayBV9aolWyVDxYIR6
         eWGbexJ0NtZ8gSuDRLmdasrHB/0HyZu8Ywy6Xo8jCgzw+Y/AYkGTztlKp1qwD72oQ6+3
         oqfLfw2CVKqp9CQo8pGz3Nk/6oWgc58fcRvGAXl8q+U066hc//ipmH6E/oiAlwwSkP5E
         R/JfEnAhf6P1G8xLQypx+cdJeA5l8Y16+crGjEN+9nuRDTa9khmFjY46XR5kRaTUalKE
         v3b7u9d2/D5S+JVIgInJVFg27Av7Y2k20pJ8d2+Tmf3Q4WPiKWPHYYJA4U9BFbATB9tp
         zwnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4wAZ4Hir6hRgzUg5YR+6Gu5DbtyihpF7uLEIGjYKZSk=;
        b=jGVeYYJOrmrtStNn9dHFvqGj6Hir9NHoFHA2ggeodR26C3W2ssETYzWRLfEXZt5PNv
         UkjZBQwSWoHtWSUobTpkbx7YpP+06u4PQjTTzxkqWL3Ii6j5gKtkDTkz4aqotrAeUQx0
         PUBRIf8lCy61EQcOX0Qp72wuxjky2BHojIa0edgYkrOWyONGHb82S7j+NArXBmsyqyF+
         QqshwfYDvTnoKydK8mLTj6YNJKeXvTqz7xRJYuqDD+g2+95n7TGfZwlvLHpy9lIPZSqE
         +rPB1+M5nDq1dfE9AF5BO2b0RxUkSEy1Sp7u+4mJKCY7BMjNewwWfZwoOOEZQj8dIF2g
         HVgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0080.hostedemail.com. [216.40.44.80])
        by gmr-mx.google.com with ESMTPS id m27si383656qtg.2.2020.11.12.12.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 12:22:24 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.80;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 7DB5E181D3025;
	Thu, 12 Nov 2020 20:22:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3870:3871:3872:3873:3874:4321:5007:6117:6119:7576:7875:7974:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12555:12740:12760:12895:12986:13069:13095:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21627:30012:30054:30063:30064:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: yard96_2014c8327309
X-Filterd-Recvd-Size: 3419
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Nov 2020 20:22:21 +0000 (UTC)
Message-ID: <5cf1f03c2cf29ee173a7b3b81a0f2f8785b6aab8.camel@perches.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Moore, Robert"
	 <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J"
 <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
 <gustavoars@kernel.org>,  "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "devel@acpica.org" <devel@acpica.org>,  "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Date: Thu, 12 Nov 2020 12:22:20 -0800
In-Reply-To: <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
	 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
	 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.80 is neither permitted nor denied by best guess
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

On Thu, 2020-11-12 at 11:30 -0800, Nick Desaulniers wrote:
> On Thu, Nov 12, 2020 at 7:13 AM Moore, Robert <robert.moore@intel.com> wrote:
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wrote:
> > > Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.
> > It's not a keyword.
> > 
> > It's a preprocessor macro that expands to
> > __attribute__((__fallthrough__)) for compilers that support it.  For compilers that do not, it expands to nothing.  Both GCC 7+ and Clang support this attribute.  Which other compilers that support -Wimplicit-fallthrough do you care to support?
> > 
> > We need to support MSVC 2017 -- which apparently does not support this.
> 
> In which case, the macro is not expanded to a compiler attribute the
> compiler doesn't support.  Please see also its definition in
> include/linux/compiler_attributes.h.
> 
> From what I can tell, MSVC does not warn on implicit fallthrough, so
> there's no corresponding attribute (or comment) to disable the warning
> in MSVC.
> 
> That doesn't mean this code is not portable to MSVC; a macro that
> expands to nothing should not be a problem.

acpica is a special case as all the code is in a separate
repository and converted via Lindent to resemble linux
standard styles.

Perhaps it'd easier to avoid modifying acpica and add something like:
---
diff --git a/drivers/acpi/acpica/Makefile b/drivers/acpi/acpica/Makefile
index 59700433a96e..469508a8d671 100644
--- a/drivers/acpi/acpica/Makefile
+++ b/drivers/acpi/acpica/Makefile
@@ -4,6 +4,7 @@
 #
 
 ccflags-y			:= -Os -D_LINUX -DBUILDING_ACPICA
+ccflags-y			+= -Wno-implicit-fallthrough
 ccflags-$(CONFIG_ACPI_DEBUG)	+= -DACPI_DEBUG_OUTPUT
 
 # use acpi.o to put all files here into acpi.o modparam namespace


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5cf1f03c2cf29ee173a7b3b81a0f2f8785b6aab8.camel%40perches.com.
