Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBB5AU6AAMGQE24DII3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 721E32FF3BA
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 20:03:36 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id a17sf2312205qko.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 11:03:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611255815; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeBigSdp+UI9840HK5hnprW8ThusIZ9AWYcQ6r7xP/Q3zaHSpXnyFnQV0bYuE63VP5
         0fjj9GbIDICXSE7mJe5IrcjIvFy2AwefDbgNOkNqVPhe8NZBKfuoS88DAtBf6TV5G4GY
         I7HxbEjXCauKg9pxGV8MNXTTicnbbRL4geGUQ3SksvAJcdCOUf5+5X6N29NS4qVMWmsy
         +LqxNqYhxGaSPxHPuKgQgklVP8SRPYgOoySfGLR4uP6XNPQ9sEJulD8l3d4s7f12vXh8
         SI1mI1rSTaqv0SdWFhH8zh/jaLA1TmMV0NJ7R+/d/a7gCJITDmGfvKPGB0h3Pn12L/Xo
         wI9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=5qJRQiP9VM3ZuASTQNPK9AOwiFA+mpOfY3ELB5hTxqs=;
        b=MS0RwgmsXqP76zecBsZdg1MhpJgSXdOGB6fQKEqySx1oVvII3eg79qGtQtJM7l0WH3
         VXJl5IQ7OgWFdTEq1cIppoYw06/5w+LY14Zgros94o5RO0tMP4YvSthl+NiIpHW/hOFH
         K/vQaa5Y+O/7w0m/+6+xXK0AP4iwzuv2vGrjsW324QOIZiNbsn75RwcYDfSrGGcSqI21
         gv2hb4IuMPoXfeZbLB/4RdOngz0KYO+TgF8U9hot3JIKjNDxH7dxtpfW3zUaDvTkQI/J
         flg6dan1CqkX1tomRy63ivlJN8+2vtmjcVRSur2UA+2nE00DDY9AP0QGZlgxRvjKdx+l
         S0sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.181 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qJRQiP9VM3ZuASTQNPK9AOwiFA+mpOfY3ELB5hTxqs=;
        b=ppe3SQ//BmshJl6b5TYCJkqgahNQ7tYq/yiVZIT7jY6R6IcjqME96g2iAt1nJ6NE2v
         O7ugmzmYqqrQzTi8tkd7KuEvS29iu/+Fi7YDwymgsAxviCJflB/ROwyeaWb4PZPVBAnl
         f2kBkDUQL/eEyqJisldT38Lf7YwvqfT/KLUQ+by2dDwS4CNCi0X5CxOzkKiqe+STMVHr
         TKDXeP8sxdiH17uspXpgd4OD+LysifrbNRWE/9iGaCVhyUQNMlsKzErLvZmo9DU4euf0
         Nq4xA3HUr+ftgJcmYU2CT/mqwQzFvSSFWWqAi9k8P4PvqQvFNfZ6Lui2rYyu8oclq6RC
         7YPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5qJRQiP9VM3ZuASTQNPK9AOwiFA+mpOfY3ELB5hTxqs=;
        b=Nnyzd9X0QvUhyDV9XMmBUWcR0jyH6C4r/Igl9VEV7V+3Exd8FKvpENzjN954D3gQp4
         4oGqmcegCWx5Eh8IJ/v7h4ojuN7qBea1ddMolWWraKDa6ctPuEO6k3tIHXQg4N+envqO
         ib2tyHI0eO+EHmBMx7LsqyLuZ6e+h5So75nVYeQxfVxXoNCAerBtR51j3wqMUsUO03zr
         c+a7W/JIQMi8QsPtUOc/+Gl2jBRPyIr8KpRyjQg5uL6bd4Z3+k1bpAIjEsrXYm4m/S5i
         p62JJEMKxvVQHwZHfTE7bFApXK/jKRTWmyqYmj2eHy4e4nJ/DB5jW13WNuB5fsKWorMm
         IMxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wlg7M4ls5DwY6Y7bwx0UGyUlNrPwZs6P2JbyX+KG/o2CWcllt
	SDvzrWj+W4ygKLhB7Ua+zfY=
X-Google-Smtp-Source: ABdhPJzmtVG+df0QUZoaHiMaphJLeOQnAt/kcBsD/J1hgJHEIlVpngQTGm4FaJkwDjYxLlPCcGtFiw==
X-Received: by 2002:a37:4c0f:: with SMTP id z15mr1286169qka.218.1611255815536;
        Thu, 21 Jan 2021 11:03:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3bd4:: with SMTP id s20ls1283186qte.1.gmail; Thu, 21 Jan
 2021 11:03:35 -0800 (PST)
X-Received: by 2002:ac8:120d:: with SMTP id x13mr1029608qti.364.1611255815044;
        Thu, 21 Jan 2021 11:03:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611255815; cv=none;
        d=google.com; s=arc-20160816;
        b=NrEePIUPJqlEcAwAmRiwRDxrwceYpTIOGbEp0WmSKx0taMzdMlTzGEljy+Wl+Ynszc
         i0OtJreB3ZTzdXWn64Qh48EuygY/UGPWzqbjlr5gB599gx7oVZx2DlcPh9Ze+WvP2tl2
         IIBHoeBAe5M+XdTndq8FeJ/W/O3/Sqsna5g+b5+fR9LITbVNa3H3T0wH5/tL7DXHEWYH
         rIzyC6q9kG9lG7bkQXVp/QS+BXdgF8p/H+Y1w0GiWX4lA4o6ro/Hm+5UN/35lM1BMwfY
         EgAZvsy+G+kbRldclhs710oENqUIGH6AslmjMc3CTNlHh/G7j4j4M6B+EjHAc1LwKT8h
         onwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=sxUFDSeoZEWN4aDqisZF6mUVpomTtmiF7YK6hytZxWc=;
        b=fJX1ohr5U7+/1vL2kGsYsXPJ6SAwdpnOtduqmmVNSSlgKNqyGHaBIF0PmI19SfgX9T
         uccuzfNJeP0FWwzwhylZBAB79aiuLU5kNT6kYsXuz91ueXWDOexX/EXGZ82+7472B4xk
         RTY8EKKR7hAOS8fC1nF1ufxL2PvtHdiHQecIFFfNryilrCPvZeOVA8vkr5sZj1+UrnCe
         P/MfrZQ86l0efUwIOfNHF5Zx/GtbIcrvjiuCD63ylVu96ZjJoAT5H2CcmTC/6AQ9cC6e
         jw4sIzbE7+j7HmM5NGD96nHMbTDPZeM4DOAQp8WEQPPng2saZUAqBcykxrs2FcR8Qqvt
         xbEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.181 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com. [209.85.167.181])
        by gmr-mx.google.com with ESMTPS id p55si590938qtc.2.2021.01.21.11.03.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 11:03:35 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.181 as permitted sender) client-ip=209.85.167.181;
Received: by mail-oi1-f181.google.com with SMTP id p5so3285641oif.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 11:03:35 -0800 (PST)
X-Received: by 2002:aca:308a:: with SMTP id w132mr703472oiw.69.1611255814671;
 Thu, 21 Jan 2021 11:03:34 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com> <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
In-Reply-To: <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 Jan 2021 20:03:23 +0100
Message-ID: <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: Jon Hunter <jonathanh@nvidia.com>, Erik Kaneda <erik.kaneda@intel.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Robert Moore <robert.moore@intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, clang-built-linux@googlegroups.com, 
	Len Brown <lenb@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.181 as
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

On Thu, Jan 21, 2021 at 11:08 AM Jon Hunter <jonathanh@nvidia.com> wrote:
>
>
> On 11/11/2020 02:11, Nick Desaulniers wrote:
> > The "fallthrough" pseudo-keyword was added as a portable way to denote
> > intentional fallthrough. This code seemed to be using a mix of
> > fallthrough comments that GCC recognizes, and some kind of lint marker.
> > I'm guessing that linter hasn't been run in a while from the mixed use
> > of the marker vs comments.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
>
> I know this is not the exact version that was merged, I can't find it on
> the list, but looks like the version that was merged [0],

It would be this patch:

https://patchwork.kernel.org/project/linux-acpi/patch/20210115184826.2250-4=
-erik.kaneda@intel.com/

Nick, Erik?

> is causing build errors with older toolchains (GCC v6) ...
>
> /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontr=
ol.c: In function =E2=80=98acpi_ds_exec_begin_control_op=E2=80=99:
> /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontr=
ol.c:65:3: error: =E2=80=98ACPI_FALLTHROUGH=E2=80=99 undeclared (first use =
in this function)
>    ACPI_FALLTHROUGH;
>    ^~~~~~~~~~~~~~~~
> /dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontr=
ol.c:65:3: note: each undeclared identifier is reported only once for each =
function it appears in
> /dvs/git/dirty/git-master_l4t-upstream/kernel/scripts/Makefile.build:287:=
 recipe for target 'drivers/acpi/acpica/dscontrol.o' failed
>
> Cheers
> Jon
>
> [0] https://github.com/acpica/acpica/commit/4b9135f5
>
> --
> nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAJZ5v0it3KfdNo7kwq-7__C%2BKvr4Eo7x8-3rBi09B5rHfNv-hQ%40m=
ail.gmail.com.
