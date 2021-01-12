Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBBWS637QKGQE6P4WRCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE952F322D
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 14:50:00 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id m203sf2545415ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 05:50:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610459399; cv=pass;
        d=google.com; s=arc-20160816;
        b=bc8ROPSxoMHZxe7jhqpTqYWdVbEMwXQkOFTo4a77mYcjjLfbeGE4hpIJtgXSLA/zsI
         tfWZ+W9kn7MxEe6KzKiS8xP7PWO3w0JSKFjDpfH6hxVrE2gIx2MjmVdJvcc47Y/49pJn
         6et1HCLne0SFcmNTLe+hVQR2NCKbKVl5y/BCgJpct2rPakkcX0KnG0yB/0O3VyURcnmo
         zKrCCXFnxV5OOw7GKs649eIZJWyj0AWLng07RHfv2xaAbp89kYwFTS5gXiWswEUtHa7f
         Fu1iLFdWWJu/NayHn/D2g6p47lQpgkQc4hfl/nXpodha63ln/Ih7kCwNycdsCpaKt2ui
         KfKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=JavANit5r7yR0oGG8wa8i1gjtJVcaCYmro4e4MlyABA=;
        b=eGbnxtotjgODCzs6s0y2Wtd5AiL5pwvuhWCNeHifB35Qg6rD+6ihGfr8DTOf0t8nh5
         3Exr6aCSHE5cMHAFHQ+kahGkciySHV8SSuR4BTePKFQLqHJ0CUXMg/kDV9628j8GdRYz
         AsXOnEuHPWqQgkMcfdwoSBw4/Ay+hFT7rpTJ6FbuA9InO6KDHLfHiZA15WB2vqKRD6R6
         2Po5tnx/1e+qpwfzQPa9K/yy43VgJreDsXxrLKsSAjzX/p5GmowRS1PLwTFd4Edr5Agk
         n7VndLJJUcrDNeDNx+m7QKi5KkOjWXajmIDhqHZuTMxbpzECc/BBhGlYKUd4+4Dmlvw5
         VLJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JavANit5r7yR0oGG8wa8i1gjtJVcaCYmro4e4MlyABA=;
        b=gxMs8AzxFgHLvFtGMiP0ThIYVgPJxv2uux0kYDo6TqK3Ng8jkPmTBkLdMA+bPJkr2s
         WB/L9pds1aY9RnkqH76jK/ALNH5nKGXY1DCtHrV5VbIDouxKW3Awzw48MCvjK8N1JNOP
         HYwPTUTMg5Oy+FEzI6MNdrkWxS7vFcOR08gbfNyuQyqqVPABmxxoocGTRdGHrzPoP6Up
         AV5IuH6/YpDi9T9QnE+IBgsZHWAokLOfy+nc/aEmqKqu6appNGwu0XQC8ja6KteNmPQy
         xh+hSHnVYvtJr3oEOcAv+PgwLDZyWXWtiYeHRoYWsC4KNEvgWm2e5G4dW4JgVXweS81k
         w1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JavANit5r7yR0oGG8wa8i1gjtJVcaCYmro4e4MlyABA=;
        b=s/fgOcCrO1oWdyUpq7fWLP/nG7u3u97iiOE0unntVXXLXUtM6BLX7APLtQUZ+ZK+NW
         fhrjN99dHfrXlmhV97qRhb1ydgcZVEBIneOpQ3HhzkSqNDNIoyumeFeAhFeBo5ca/04r
         xWRBrqXAovzqMpkmWA29i0AWP3wNJfGbE08CKkVIXoARsVGWL4knfQIPvwXkC9k8aC18
         gBeCQmx3kvZtqDETTLMR4wII7BSsjIwVR/ze9butyrCP94p10/cnsKhsYkp7e+EZ2Oo7
         iM9DoCCSPXGUO7b8RVCgBKnpyZNncZd1SqaWTqHL14NOe955MR0uTGjTVQshqgWYDPtE
         x8Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DchURNlMBVI81gWvmkSQnNmex323/nDYZWPT5OfiIlWUpOZSA
	KvmZyJ2P9qENJIUdJlfziQw=
X-Google-Smtp-Source: ABdhPJzo73D4TKXg5vesNmMMO8Ejd82LhPhZxfOCdK3J96NSAgzCkHZrVENF7l581VhO3/X8rt+26g==
X-Received: by 2002:a25:fc11:: with SMTP id v17mr7049892ybd.64.1610459398947;
        Tue, 12 Jan 2021 05:49:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls1547868yba.10.gmail; Tue, 12
 Jan 2021 05:49:58 -0800 (PST)
X-Received: by 2002:a25:5f49:: with SMTP id h9mr6576301ybm.99.1610459398547;
        Tue, 12 Jan 2021 05:49:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610459398; cv=none;
        d=google.com; s=arc-20160816;
        b=q/N8hhEv8rY4VU2adtdsIIFamTLY+EIwCLzz5xnysGrZy8G0Ylb9QJ1kN5P1WS97Pv
         kNGfzzFxSHqcLOnqqhaXfkcpImRP1tfxoRkfDo3bYiZaCxxUwnWxEXuKtCTmeQAj05ae
         NGaKITah1ZH/zicQbCOwYtdC1I45sq/Lw6V5VQOzGbJ9nCqmL3PBnb7yubp0N9Yyb8lM
         ZcUtzGQT7FXC9WBVfd+GBR8pIosBi05j9KfYI5+voXIvkX0HyciLU+DKooA84heuLsZR
         OL+zlRiezP/DjuXabbiv7SKLIlIzKd/ncv2ollbIf4TAMV4/mJXA8+puJCGdSEFFSL+h
         RvGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=tzLjfKbap56hNQt8zCr5eINZRU89Feh7WJmB8qJ3UiM=;
        b=bLVHrNEtSy2sHPDC84tx7PqCVigv45nX5P8d1SC2n0Hj/uhnDQHpUOo0AqHgqYJJRg
         qhXBUqxOjVFqsaSOBfEUC/zenuiN/ra/OaeGC0basXTaQuyM0GwNuVimsYgGAaE8KZE3
         VNAnBPItPUxzH2e7JmqcnY+EScIV/1S2ISb6Ozq8Yj28shRLQuNXwqY/nV61pUslaGkz
         VBGW4ti9STd6XS+LqxJdqP1GmQJNgPNyX5TPuepcwgDimJ/L/SGG5ACJFNz7JV6HZ2f0
         wcHOvJmG+PN7pxJkyZB/67CiHtlJIJOY/e3keIyTp+vC9dC+JMBesEmmKvHmqTO0kkxJ
         0eJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com. [209.85.167.169])
        by gmr-mx.google.com with ESMTPS id r12si286157ybc.3.2021.01.12.05.49.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 05:49:58 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.169 as permitted sender) client-ip=209.85.167.169;
Received: by mail-oi1-f169.google.com with SMTP id l207so2386834oib.4
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 05:49:58 -0800 (PST)
X-Received: by 2002:aca:4892:: with SMTP id v140mr2379482oia.71.1610459398177;
 Tue, 12 Jan 2021 05:49:58 -0800 (PST)
MIME-Version: 1.0
References: <202101081623.CGkLO3Kx-lkp@intel.com> <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
 <106d7891-230f-18e1-1b0f-cb6a62cf0387@flygoat.com> <01442a77-7d87-5a12-d7b8-4fe397a37464@redhat.com>
In-Reply-To: <01442a77-7d87-5a12-d7b8-4fe397a37464@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 14:49:46 +0100
Message-ID: <CAJZ5v0hUrNd9HCY66mw6_Vab0JrgNwJYV_PgaT6fkd1+j8UBtw@mail.gmail.com>
Subject: Re: [pm:bleeding-edge 20/29] drivers/acpi/platform_profile.c:67:33:
 error: passing 'const struct platform_profile_handler to parameter of type
 'struct platform_profile_handler discards qualifiers
To: Hans de Goede <hdegoede@redhat.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, kernel test robot <lkp@intel.com>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.169 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jan 12, 2021 at 1:11 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 1/12/21 1:07 PM, Jiaxun Yang wrote:
> > =E5=9C=A8 2021/1/12 =E4=B8=8B=E5=8D=886:42, Hans de Goede =E5=86=99=E9=
=81=93:
> >> Hi,
> >>
> >> On 1/8/21 9:52 AM, kernel test robot wrote:
> > [...]
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>):
> >>
> > [...]
> >>>     2 errors generated.
> >
> > Oops, thanks for the reminder, I should exclude 0day CI from mail filte=
r.
> > It's wired that GCC didn't say anything about it.
> >
> >> Ugh, so that means that the current version of the
> >> "ACPI: platform-profile: Pass profile pointer to driver callbacks"
> >> patch is no good. Since this is causing compile errors I assume
> >> that it will be dropped from the bleeding-edge branch.
> >> Is that right Rafael?
> >
> > I'm not familiar with x86pdx and ACPI workflow.
> > Should I resend the patch or send a fixup patch?
>
> I believe a new version of the patch is best, then Rafael can
> replace the broken patch. We want to avoid having a commit in
> git history which does not compile in some cases, because that
> creates problems when git bisecting.

That's right.

If the plan is to drop the "const" everywhere, I would appreciate an
additional patch to do that on top of the two from Mark and a new
patch adding a new callback on top of that.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAJZ5v0hUrNd9HCY66mw6_Vab0JrgNwJYV_PgaT6fkd1%2Bj8UBtw%40m=
ail.gmail.com.
