Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCNCU6AAMGQEPJF7J3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 708C62FF3C8
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 20:07:55 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id l17sf1815205pff.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 11:07:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611256074; cv=pass;
        d=google.com; s=arc-20160816;
        b=UpKQ5az5ZtMixKt0ufX7qRN+hNixnhmrr+wbUWsEpxesZWsh9UAy2ewaVE7dg/cdTL
         BFFNA5ZsPDK1clg9+uquub3Y8Jr2ucitOpPqAVMdrHpRenOCFViGhMHjbenctvYQ9U1k
         P9XJs5NPuhdDVtHrgrfEUooL0TfOMc8mjk2R8ARMhxPqRVE+n8qhGNOTEWmfaGggy+Mv
         EYzJuYNgsucXBShU8/KB2/sqNP+KtIS/pCuO2KKzfr7NmLddCMj8YpZlHLGILVJVD9WQ
         N2P+N3/4+AqNdtPbZRNGUkNXX+uj0O+s6OyYnnkLuhK3/3c27FVwEqgKqQogYsyL0Hwi
         fDJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c2L0hXalGQfp87xf5j0UYxfm0q41us4bpRKmvZ3ptsE=;
        b=L2tAEhAVopuG7Lw/nrFuZVZA9tsM9IphQahRUePSoB5cyOLMwsod1L3NMVcGBuv9sh
         3bHGlA6N5V21eEVBWuWcX/XfxsmHxZTgqMOYvwssJYfJVZNDp2UtP2giJHz+0/c/3t5D
         exBrsnNLexp2nC1JrWdY7rl43YB9sDRtAhga7H/AMJjcZ2oNa+HuJcr6bgGygYrV2+UZ
         Dba6DZ+W9H4AXCwShW4HCGzY5Fp4N4kBZlC3EWFebpEK+KsaiNkfwlCYjh932koop31I
         vvvPz5lKFz56s8e8G/kXnNift/vHs68v9QZ9iyibV7jmp/R/l5yeETBDnT+Ax93KPgkl
         /5UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LS1oZDTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=c2L0hXalGQfp87xf5j0UYxfm0q41us4bpRKmvZ3ptsE=;
        b=XTb+LEJgqMcaHkF0JZgY6zvqjJuTTRVrI1EdztA/VG2qmRfnU/iGFDprUitKYU5Y4Z
         KqQJy8+H4CUmUghylttl7Sed6f4Swz+cBXUltcz808lDzSCPVyg3rTUtgRcx+LaPEy0Z
         pUGo+ErNgX/PhH9DQexdDlpg6Evy7bLo2eEC72o7NKBe4jyNr6FDY3yuhCoK5xX4jlsG
         arUEfDua2dIDQfPbHFUrdErU5WAhNRXL9PklR6wboXr2LE3LPW+IrqOfCqSNpbmWZiZY
         VHIVB8CkAAEc1sGWcuh03vdEWTBCVNZDwVR2OP5g5S6ylIxlMsh7OXaOcGgynotRgTB6
         arOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c2L0hXalGQfp87xf5j0UYxfm0q41us4bpRKmvZ3ptsE=;
        b=ujy6rF7iFyHtWs17cMBnTKDcUmMo9RYQmKKrqPIsHFowBtyVj4HuuueuM2Bx+oOV9s
         ogca2VDxrq1JJTS9HXkK3UakJ/AQUYOvGcskDBaQn/tg72WLvXluGqzKYwyJDX8Bnpwz
         SflD2j2Tb9O+fPTgvyQnoPrGcywsQPTS4h0LQv0ACACTIkP3l7yjYRL1ERzqET/QIujV
         DQ3krtT3JE83BXn+QSkIfR/ZEtv15HrwVI4mVqSxR/R2zzLEy+V1AbtD5hebkGtZJqrz
         aHAjvPllo8P0NyGS9gvzlLFVq8pBWCLGAHpjTSfs0sy5KJuzp+yM/mtBxnXP90aRajUK
         g1lQ==
X-Gm-Message-State: AOAM533vaG3FkKzgONSgesmF8i3PYrss6pn4d9pXpAvSXPnjcYOs1fbq
	41y+f26/PirrEE9t9xfF6B4=
X-Google-Smtp-Source: ABdhPJw9zcYGiIbiX+VPgzUqy0uTI1fG9iQKIVrj7410yCZiDPNBJ/Scwgm8a7xw5HDHVvRNrVvnfA==
X-Received: by 2002:a05:6a00:acc:b029:198:2ba6:c0f6 with SMTP id c12-20020a056a000accb02901982ba6c0f6mr864083pfl.53.1611256073936;
        Thu, 21 Jan 2021 11:07:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5290:: with SMTP id w16ls1774791pjh.2.canary-gmail;
 Thu, 21 Jan 2021 11:07:53 -0800 (PST)
X-Received: by 2002:a17:902:758c:b029:da:a6e1:e06 with SMTP id j12-20020a170902758cb02900daa6e10e06mr685174pll.67.1611256073223;
        Thu, 21 Jan 2021 11:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611256073; cv=none;
        d=google.com; s=arc-20160816;
        b=u/BlVIhMfjke+ZdqtRrEGEcJQfK6DafQD8iRjY8G3gkGP7qbGVvop3Y2QZK48DXpCC
         6z11vWlJddOJ/EaJY10g4AChSYtvrl4i+CNPVK188LymNW401Z5cnnIF2PtSRTt/+5VP
         VxGHXaySYil3GxtX/FHl0YtDTJYbd1gyK92+eBMrf4rVHodz5jO67De3+fv+R0nolF+Z
         ++ia3Xz80GTfIoZVGltHonpJI50po8vA+elqmdMXawPPzDeJtp/Uo/RxdvfchE1Fe8+v
         zMnQAnfXXWe70GIPGyP0OqUv7g/VeThJXZRpQjngwfMuThQ2CHct7jYdxviw3e8zJm4g
         gq4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8IL7omGXKEqUEF+imDmaysOYy0Y9v5wjKeu9DQV9gtM=;
        b=K5OyxAisGJigSWbiJyhEKAH1R5k7iZzqTBl8OuZiQYl65MiiAEVyX8zKzTEV/SFpoA
         XQoiKvrUZDuAXtsKhjUYDExta2shZ1brwxnn8q9+iZ2BtA9BqQ0f0RDO73yz3UruTcfq
         PA8A/Ab4HkTuT/gmbSqOzBMbiBemjLuR5MFt0VLG5s7My2Yb5L5Bnpz/w1fisrIzNxQj
         +IRh6VRjQB+isThy+Nn3j0Zq2Vm9U18kvgyV2xT1NhlUN7LD6R4iWQBfXXl4G0ZS/bkL
         gZo6XQG6tm7hj7cl9L2O07lATdk4+FCUkBckJ2PpDLvAYJf46O3K9siXF+QbFQvy9xl6
         Igmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LS1oZDTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id d7si402497pjg.2.2021.01.21.11.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 11:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id x20so2281366pjh.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 11:07:53 -0800 (PST)
X-Received: by 2002:a17:902:9f87:b029:de:9e09:ee94 with SMTP id
 g7-20020a1709029f87b02900de9e09ee94mr707417plq.29.1611256072666; Thu, 21 Jan
 2021 11:07:52 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com> <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 11:07:41 -0800
Message-ID: <CAKwvOdnG6Ew+7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT=6FApYxA@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
Cc: Jon Hunter <jonathanh@nvidia.com>, Robert Moore <robert.moore@intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LS1oZDTg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 21, 2021 at 11:03 AM Rafael J. Wysocki <rafael@kernel.org> wrot=
e:
>
> On Thu, Jan 21, 2021 at 11:08 AM Jon Hunter <jonathanh@nvidia.com> wrote:
> >
> >
> > On 11/11/2020 02:11, Nick Desaulniers wrote:
> > > The "fallthrough" pseudo-keyword was added as a portable way to denot=
e
> > > intentional fallthrough. This code seemed to be using a mix of
> > > fallthrough comments that GCC recognizes, and some kind of lint marke=
r.
> > > I'm guessing that linter hasn't been run in a while from the mixed us=
e
> > > of the marker vs comments.
> > >
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> >
> > I know this is not the exact version that was merged, I can't find it o=
n
> > the list, but looks like the version that was merged [0],
>
> It would be this patch:
>
> https://patchwork.kernel.org/project/linux-acpi/patch/20210115184826.2250=
-4-erik.kaneda@intel.com/
>
> Nick, Erik?

oh, shit, looks like a line was dropped.  Here's what I sent upstream:
https://github.com/acpica/acpica/pull/650/files#diff-cccd96e900e01f7224c815=
08cbddfb1af6fcfbff959d6bfb55123e1b9cad4e38R1543
Note in the patch Rafael links to that line is missing and there's
instead an #ifdef that's empty.  Was this line accidentally dropped?

>
> > is causing build errors with older toolchains (GCC v6) ...
> >
> > /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscon=
trol.c: In function =E2=80=98acpi_ds_exec_begin_control_op=E2=80=99:
> > /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscon=
trol.c:65:3: error: =E2=80=98ACPI_FALLTHROUGH=E2=80=99 undeclared (first us=
e in this function)
> >    ACPI_FALLTHROUGH;
> >    ^~~~~~~~~~~~~~~~
> > /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscon=
trol.c:65:3: note: each undeclared identifier is reported only once for eac=
h function it appears in
> > /dvs/git/dirty/git-master_l4t-upstream/kernel/scripts/Makefile.build:28=
7: recipe for target 'drivers/acpi/acpica/dscontrol.o' failed
> >
> > Cheers
> > Jon
> >
> > [0] https://github.com/acpica/acpica/commit/4b9135f5
> >
> > --
> > nvpublic



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnG6Ew%2B7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT%3D6FApYxA%4=
0mail.gmail.com.
