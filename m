Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFXG77UQKGQEYJSCNJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 168577A252
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:34:48 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id e20sf40286984pfd.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 00:34:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564472086; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsPu5NxUJLREeaq9y7rWRFXoE8COSwxJAph1mpi+C1Fb6NpTDme/WHdwvp2c539PGz
         bnfcH7ubgeiCB1ZO8a4quNLsyDAaK7v2LXuDCam/36oHoLvVBXnKMUMxzrWD4SSGky2O
         83m4TB6UBPtIQQk1jXpzlqRsAxOCptIkahjHdcSUCwmJjuErJk67yuAOSAetq0y6qyjx
         Xvmn4KBg+420gGbbDVcu4UJnJb+HgmB9tKowRGLxeYXKocwlP/fh7STFH0Nve2MKqV8d
         3SIUzu8EIj2v77+4MZEqmNOj2/waQa0Cdh3hnT/waWoWvQXx35ewh83wY9rqB7x0gCaS
         9JFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KCXyAllLtRH3ATgkMxirEPcn2Ksu2vc1EL8AEDxOdcc=;
        b=QVnTGHileJn0u6x1B54CQPo7RP7S+eGelkVSJtocIUK/B5PMkZHGgqsTDPIC3QgAIt
         jCWLe9zBwmX2RbxeQ2lvh2cr0e/quD8T5LJmxfJLh4jY3Vbb017eoNE9dOK6DDrHMv8/
         HJQLqwlz0YeEF8buXSDPjCCh3McdBegaulSsWPr6SFYUsMNsis9LAesZGBIbAmsxZy+n
         Wte6aEvpD6ZKEe1G9TL7pwLvdTBuG9FasfYtn6WjH9evj7HE9xq8Lyk+vtRAXKZjK41Y
         lTWgHZBwoLmKwITb0GmGgxEOlpsHdYCSphveB7rgIEx24+V6eT/vPHDX0hxM+ZeBYKoW
         Kh4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCXyAllLtRH3ATgkMxirEPcn2Ksu2vc1EL8AEDxOdcc=;
        b=dXFdbfvdof7Rctte1H7DPySGU0U9wcSl73OTwwG76+KBUgf0NOn69I+TJrEbyZkJx1
         fKKTFkgacvIy7auMNLEp/TyZyMD/I7aSQ8vQB5CUcPvP7hjSwKKG+ZjI2YZgYcptAXua
         bp0oAVspDpZ/wiK7BJg72fqgRi0FxIotWCRAa666xLFCuMhDVK9s1aFHLNZaUCMHxbNz
         IBgJbVeo039kj107PGD0VUxFL7USZxz4bUx12fYGqRbDRtM1hC/OJTqGFgIprHSM5fPF
         raLdBZujQxu/JlUeLINYAZE+GKC6QiqpIKDPuB4yXMrHMVQimUCoe6D3aGG2j3XWhdER
         kAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCXyAllLtRH3ATgkMxirEPcn2Ksu2vc1EL8AEDxOdcc=;
        b=V6eukstSevAs97dv0WZLCz1lMWlHz08MM+VPSBCub2Hj97r7oE6bvFvVAksh257zwG
         PVpYEATx3g8wjRn86jRtr9+G3MhjYDo9u7grkw2ngDi93xDvphEAraBnq4yQxMOQHoqm
         3tUkR6PrJc3jwbJvaMvqznRK1fSOuNcPNIXQBYBeAoXJsBBdsFclZrtOCUa+r1EleRbf
         8TDgyKWgIXqL1o3OJS04XAybqUZr8gv/d/Eduzmg2XM9MuAqdn8WvNqyyDiafPRJ5fso
         Ns/Ni/Rbrc+qY4cRpls+aAEvpw6DnKr1T7/usN3dL4iyX1XbNPIVB+V/YHRziE7bztoP
         aRWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcr5dtRlDbkUDazujkjZh5NCNvJO3pLUoVkObe9ZAdy5L5Tbop
	XXXFItMHolBZgG7GG29hD4M=
X-Google-Smtp-Source: APXvYqyFxeIfbr4YGpKVSRwYTTV9VHF9N9c7+qcJqIPddxV4dCeF3uRLOK2MIyyEaL6g+Jj/j+Wepg==
X-Received: by 2002:a63:eb56:: with SMTP id b22mr109286833pgk.355.1564472086228;
        Tue, 30 Jul 2019 00:34:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6452:: with SMTP id s18ls13023123pgv.2.gmail; Tue, 30
 Jul 2019 00:34:45 -0700 (PDT)
X-Received: by 2002:a63:de07:: with SMTP id f7mr5289007pgg.213.1564472085710;
        Tue, 30 Jul 2019 00:34:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564472085; cv=none;
        d=google.com; s=arc-20160816;
        b=XETWGnlWTXsx70sf66YMvVdzcqpNXrpxdlqBCv2NSpkRBYmu+JhRog1DEkdP8/81LD
         pkAMqP8GZfb43ZqYlwQ6nk+QpH9+a7NfCMl3yiTMGIH6Fwp+RpHjVNuB6rNIMH45kUI8
         4kUt7ZQuaGUnyW78TtW9zvPuQqmjYAFwP2Ld2f2/ORzOnnAesTlkgB/CnFLH6XgFtNei
         TPKQBGgmdYKMxXpgqqZCCNu/wVF1BL3AeOzlC3G7t/BTerK4aK0Q3lHVWawk9DzrQ7wW
         WpLS/DMFbB/kqAN45Yr5Fkk71Y38PYF5wSqs1bndXBsaBBSQm66qpSFaZRswcRlOyd1U
         wi5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Zr+6M31Gi9RIhd6WGjh1Vbf2RuBt7+NJdVFSHL2O2pg=;
        b=HYEs5dxg8WT2iUSiF0LFYIP53tY9OAm+FS8HZS43ejxBRtllSjExR76CCmf8xnmg4f
         K2zW4krFy6B1BPOsxx0h/RV1BrLEUoqgm5xE4hcNhEamd1qA3OYFdt6z9a67hkx9SPLB
         q0fT/JiIt2OAJTONjdewNWhD1c3XOFts3zMVPm1UrkN0eew7MyGTkkD3/17dm0cAHpVj
         yoeP2bH3ARod2PdFPqpExGhcch7YXHTy5p7emZlKQ/uHPn8m3bAZtwAsBjouKau2uEIr
         D/zD1spd2uazFRYgYr7sqzYL9VHejJ4ziIXsJyQXZsAIfXXSTHl3UleqfUtYVWadkrNT
         kF3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id z9si2843753pjp.0.2019.07.30.00.34.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 00:34:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id t8so45899705qkt.1
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 00:34:45 -0700 (PDT)
X-Received: by 2002:a37:76c5:: with SMTP id r188mr74856027qkc.394.1564472084625;
 Tue, 30 Jul 2019 00:34:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org>
In-Reply-To: <20190729215200.GN31406@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 09:34:28 +0200
Message-ID: <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, christophe leroy <christophe.leroy@c-s.fr>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Mon, Jul 29, 2019 at 11:52 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Mon, Jul 29, 2019 at 01:32:46PM -0700, Nathan Chancellor wrote:
> > For the record:
> >
> > https://godbolt.org/z/z57VU7
> >
> > This seems consistent with what Michael found so I don't think a revert
> > is entirely unreasonable.
>
> Try this:
>
>   https://godbolt.org/z/6_ZfVi
>
> This matters in non-trivial loops, for example.  But all current cases
> where such non-trivial loops are done with cache block instructions are
> actually written in real assembler already, using two registers.
> Because performance matters.  Not that I recommend writing code as
> critical as memset in C with inline asm :-)

Upon a second look, I think the issue is that the "Z" is an input argument
when it should be an output. clang decides that it can make a copy of the
input and pass that into the inline asm. This is not the most efficient
way, but it seems entirely correct according to the constraints.

Changing it to an output "=Z" constraint seems to make it work:

https://godbolt.org/z/FwEqHf

Clang still doesn't use the optimum form, but it passes the correct pointer.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw%3D1yuimX1o%2B53ARzOX%2BQ%40mail.gmail.com.
