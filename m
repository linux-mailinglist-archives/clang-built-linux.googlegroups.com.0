Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6WY2D5AKGQEIFAT3QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3848E25EBD6
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 02:25:32 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id m1sf7508064iln.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 17:25:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599351931; cv=pass;
        d=google.com; s=arc-20160816;
        b=sm6Pr4CDP39nhd9GUDjRS6DCQQ2ywoq5GicIO9F+TZKL6w7jVxrH1jKbaEToxpggpp
         1sTWeqCZAInVmSPEMjf4zh7deDQj9dMB+uOhxDuRmeEPO4uJsZ+S8MxM6xAsITIJkbDb
         yiC7JGXIjIfNfJE+H0WymPXPPtykxQN+WilVUccOuClT/17y4+dXAqyVrfL2Zn/S9gsr
         ltFwgpy8L49qDV9nGAIH1d7FlOMeUtN5tzXkMx/7BEklmZfBdRB3JVpjjMwUJS7BzWAY
         ewPd+MyXYJFJaQPWBE+U1ID3V7glS3+5HBVj605wkG8T/sVqr8L29pci1J5RD4AOMEfb
         7/rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=RH/ix0qktAAY/Tsz+hSorfpPfCw53yIHu0jsmNOP1Hc=;
        b=Ls3bE0H1OW+SSMD4U21nQOzCzQ/mEBouYVu75PK5CLFKISwZ6XVHkO7Tf7VQCP3kIP
         T76TvGyc9dWmgxzcOFyo/Hd01oiOC3189WAeebl94eCcwPHE0N65HTsYNrRiUGOD8Iai
         ePQQ0hWF/hI3D621BQB56hnV83KUtTPSnzalDrqntBeqxfp6SlMpIzWXpeMjkZQjC3Qq
         /okjQQFwmJGlAwCeePNBfLsPC2SK7uoG8Jsk50UgQX2PGyQafQNWzKQwk26pc/TvIDFV
         ouAQ66yAT3YeROjnUlhj/SJjfwcMwTmqKHykmnPyeoDD1jLcyP1MxrDpBOMo+SVe8CDo
         prRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PkKiD5JB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RH/ix0qktAAY/Tsz+hSorfpPfCw53yIHu0jsmNOP1Hc=;
        b=rWEP1Lr4oKnM27xIB4H/Qvj5TqTT4DXwwZ0yVZtPDHgwlu0A3R9jBakc65OES4wl5E
         FgGcBMTaT8bVSi/gMSQTDiut8nhasSFZ1yuTiTbHgg/EtM6itgzyXfQQyk2NiOPjhsdZ
         ReWOph+8+gYfc3OYthqOJKniCehNfZ7VdGZ+VYemvAAyfYBRB44LJVqtQW8NRmf4M6zQ
         meyv22cUrymlaq4qQXi9w7r1wqdiXWcxCo3uAbAavE7Hzk7TemqgRTdaBsVcqiZZ2/9H
         eRZ0exBu1Z1fz/+giBSFnZIzOEDhVh90zlRBs7yP8+pkLkg2rZs2sLFGHZk8hPGu5CAZ
         I7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RH/ix0qktAAY/Tsz+hSorfpPfCw53yIHu0jsmNOP1Hc=;
        b=az6/IedWjvWJM4RnEpO/qsbZlaNPUKXqrQNwJYOH7xr8TwqZfxwuNAo0s6ASS1J1q0
         mv9184im6CksJYcSc0lFKaXmxfTKAoY7e/fO6LQtFI3lLZjFjQyi3cxodXx41yJHxFhK
         JG2Ap1xPMd4WU4bgK/nb3s7hzTVOsTEYZ3e2udshHGVeiBx+aeabGfR2fiP5gV/oLsE/
         OPUCpMWZBy0wS4TL7QjZk+3jk37J0S5cHPgi4NSrw415D9awpygNCTp/wPNLrTN8i3Vy
         r2Yz8zSMOqF/ZSvlsq8TmenfSJCRIeDLfGCatLdu4UPBeYfaYj1vil14fzGAxUlB+vsz
         8UUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hd5hCuFiSbwxy24RAIn4pQx0Urw1tMPP/QX50VX+OzhU2VCTK
	Qdk/rkmXIh9bLIiWLBxGwE4=
X-Google-Smtp-Source: ABdhPJw8yBBLN3NaxrhEg8G9TN9vibbM/dC+9UFQHGkTQYhDwSEv0MDb+JtyoZwq7JXZmtwyngQAXw==
X-Received: by 2002:a05:6e02:690:: with SMTP id o16mr13237128ils.220.1599351930937;
        Sat, 05 Sep 2020 17:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a305:: with SMTP id a5ls3233016ili.5.gmail; Sat, 05 Sep
 2020 17:25:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:c30:: with SMTP id q16mr3045419ilg.175.1599351930499;
        Sat, 05 Sep 2020 17:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599351930; cv=none;
        d=google.com; s=arc-20160816;
        b=GkwQBGgL5EzRvRABgzAYn5qRRl4ens9n+YfBdMswSGvC5rd0UDYR6RR9Mr0ABMIMcY
         SrNALlrNY8b2frbRCYWPUXnmowfjZN2CVrYAxUSjkfClWgnMMSwzOVa3CaS/PEeN+dUj
         Nq3Y6H/4nvfCLcDSr+jZAG1QLdhbuyDidKKv0dgWRlbe0Qo5ZJ0DxVMZAo0EqxWsuTMK
         r186dDwotU1gcPsSXGdmhAA7P/ct4zMCCk7s0k6R68y8HM12UPh3bIGRwhkdeJ3YejLT
         XWMqz09LKh//wU6RhaEzvdOFAbD2rHpsfuMQUKeMFAgk64I8VmkkktnkfJOuDcp6tbEl
         jzYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=smhRM/0gS2ife7hbqoAb+BEFwkqlNArzwskfuvsPnHQ=;
        b=VbuMhZM3X6MtPGBUCvrXmcSpY8x/P9iw/ez4qFYIQ5yujyBTK0cm7RIgLFHak+iYVO
         Pf+fhkyFV2WNI6amlrafOvU2Mph2Ikshy41tRrdzp1Z4gKgbmGhnc4M6q5+ad3mGa5d6
         uTk+YeNNFuBLgeezPZKHqAA5zRgnsMGfga1qtBEju0wexPqICILD6OEZ2moS6IBjEc2A
         FrJG6yNNq/nzl3ANGgPqQ6kCH6AaLX2Rawe/nRBJC78B5YzmUssU30wyv+NbLUZ5cMhQ
         6EfpGZU32cw8EPuaKM4mPjefrs0/RcESbo46xpsJ7kF78rmk+v13PjbKCC7j7DTdoIHh
         1XOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PkKiD5JB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id a26si763721ill.4.2020.09.05.17.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Sep 2020 17:25:30 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0860PFf8012814
	for <clang-built-linux@googlegroups.com>; Sun, 6 Sep 2020 09:25:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0860PFf8012814
X-Nifty-SrcIP: [209.85.214.172]
Received: by mail-pl1-f172.google.com with SMTP id x18so2819447pll.6
        for <clang-built-linux@googlegroups.com>; Sat, 05 Sep 2020 17:25:15 -0700 (PDT)
X-Received: by 2002:a17:90b:360a:: with SMTP id ml10mr13696135pjb.198.1599351914954;
 Sat, 05 Sep 2020 17:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 6 Sep 2020 09:24:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
Message-ID: <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000c3236d05ae9a2200"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PkKiD5JB;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

--000000000000c3236d05ae9a2200
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 4, 2020 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
>
> In addition to performance, the primary motivation for LTO is
> to allow Clang's Control-Flow Integrity (CFI) to be used in the
> kernel. Google has shipped millions of Pixel devices running three
> major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
>
> Note that patches 1-4 are not directly related to LTO, but are
> needed to compile LTO kernels with ToT Clang, so I'm including them
> in the series for your convenience:
>
>  - Patches 1-3 are required for building the kernel with ToT Clang,
>    and IAS, and patch 4 is needed to build allmodconfig with LTO.
>
>  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
>


I still do not understand how this patch set works.
(only me?)

Please let me ask fundamental questions.



I applied this series on top of Linus' tree,
and compiled for ARCH=arm64.

I compared the kernel size with/without LTO.



[1] No LTO  (arm64 defconfig, CONFIG_LTO_NONE)

$ llvm-size   vmlinux
   text    data     bss     dec     hex filename
15848692 10099449 493060 26441201 19375f1 vmlinux



[2] Clang LTO  (arm64 defconfig + CONFIG_LTO_CLANG)

$ llvm-size   vmlinux
   text    data     bss     dec     hex filename
15906864 10197445 490804 26595113 195cf29 vmlinux


I compared the size of raw binary, arch/arm64/boot/Image.
Its size increased too.



So, in my experiment, enabling CONFIG_LTO_CLANG
increases the kernel size.
Is this correct?


One more thing, could you teach me
how Clang LTO optimizes the code against
relocatable objects?



When I learned Clang LTO first, I read this document:
https://llvm.org/docs/LinkTimeOptimization.html

It is easy to confirm the final executable
does not contain foo2, foo3...



In contrast to userspace programs,
kernel modules are basically relocatable objects.

Does Clang drop unused symbols from relocatable objects?
If so, how?

I implemented an example module (see the attachment),
and checked the symbols.
Nothing was dropped.

The situation is the same for build-in
because LTO is run against vmlinux.o, which is
relocatable as well.


--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASDUkyJMDD0a5K_HT%3D1q5NEc6dcN4%3DFUb330yK0BCKcTw%40mail.gmail.com.

--000000000000c3236d05ae9a2200
Content-Type: application/x-patch; name="0001-lto-test-module.patch"
Content-Disposition: attachment; filename="0001-lto-test-module.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_keqbde3n0>
X-Attachment-Id: f_keqbde3n0

RnJvbSBjMWRjNjQ2ZjczYmQ5NDhlZGJmMGM0YTdmMWJhYTkzZWNmOGMyMDhlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgpEYXRlOiBTdW4sIDYgU2VwIDIwMjAgMDg6MTE6MzIgKzA5MDAKU3ViamVjdDogW1BBVENIXSBs
dG86IHRlc3QgbW9kdWxlCgpIZXJlIGlzIGEgZ3JlYXQgZXhhbXBsZSBmb3IgTFRPOgogIGh0dHBz
Oi8vbGx2bS5vcmcvZG9jcy9MaW5rVGltZU9wdGltaXphdGlvbi5odG1sCgpMVE8gcmVtb3ZlcyBm
b28yKCkgYW5kIGZvbzMoKSBmcm9tIHRoZSBmaW5hbCBleGVjdXRhYmxlIGZpbGUsICJtYWluIi4K
KGFuZCBmb280KCkgaXMgYWxzbyBkcm9wcGVkIGlmIHlvdSBwYXNzIC1mbHRvIHRvIG1haW4uYykK
ClRoaXMgcGF0Y2ggaW50ZWdyYXRlcyB0aGUgZXhhbXBsZSBjb2RlIGludG8gYSBrZXJuZWwgbW9k
dWxlLgoKICBhLmMgICAgICAtPiAgIGtlcm5lbC9sdG8tdGVzdC1hLmMKICBtYWluLmMgICAtPiAg
IGtlcm5lbC9sdG8tdGVzdC1tYWluLmMKCk9mIGNvdXJzZSwgSSByZXBsYWNlZCBwcmludGYoKSB3
aXRoIHByaW50aygpLgoKSSBhcHBsaWVkIHRoaXMgdGVzdCBwYXRjaCBvbiB0b3Agb2YgU2FtaSdz
IHYyOgogIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1rYnVpbGQv
bGlzdC8/c2VyaWVzPTM0MzE1MwoKSSBjb21waWxlZCBhcm02NCBkZWZjb25maWcgKyBDT05GSUdf
TFRPX0NMQU5HLgoKVGhpcyBpcyB0aGUgcmVzdWx0OgoKJCBhYXJjaDY0LWxpbnV4LWdudS1ubSBr
ZXJuZWwvbHRvLXRlc3Qua28KMDAwMDAwMDAwMDAwMDAxMCBUIGZvbzEKMDAwMDAwMDAwMDAwMDAw
MCBUIGZvbzIKMDAwMDAwMDAwMDAwMDA0YyBUIGZvbzQKMDAwMDAwMDAwMDAwMDAwMCBCIGkubGx2
bS43NzEwNjQ1NjQyMDg1NjAyODkxCjAwMDAwMDAwMDAwMDAwMDAgciBfX2tzdHJ0YWJfbHRvX3Rl
c3RfbWFpbgowMDAwMDAwMDAwMDAwMDBlIHIgX19rc3RydGFibnNfbHRvX3Rlc3RfbWFpbgowMDAw
MDAwMDAwMDAwMDAwIHIgX19rc3ltdGFiX2x0b190ZXN0X21haW4KMDAwMDAwMDAwMDAwMDA2OCBU
IGx0b190ZXN0X21haW4KMDAwMDAwMDAwMDAwMDAwMCByIF9ub3RlXzcKICAgICAgICAgICAgICAg
ICBVIHByaW50awowMDAwMDAwMDAwMDAwMDAwIFIgLnN0ci5sbHZtLjg4NzY1MDMzMjQ4NDUxMjM4
MAowMDAwMDAwMDAwMDAwMDAwIEQgX190aGlzX21vZHVsZQowMDAwMDAwMDAwMDAwMDYzIHIgX19V
TklRVUVfSURfZGVwZW5kczI1NAowMDAwMDAwMDAwMDAwMDVhIHIgX19VTklRVUVfSURfaW50cmVl
MjUzCjAwMDAwMDAwMDAwMDAwNGMgciBfX1VOSVFVRV9JRF9uYW1lMjUyCjAwMDAwMDAwMDAwMDAw
MDAgciBfX1VOSVFVRV9JRF92ZXJtYWdpYzI1MQoKTW9kdWxlcyBhcmUgcmVsb2NhdGFibGUgb2Jq
ZWN0cywgbm90IGV4ZWN1dGFibGVzLgpIb3cgY2FuIGNsYW5nIExUTyBrbm93IHVucmVhY2hhYmxl
IHN5bWJvbHMgYXJlIHJlYWxseQp1bnJlYWNoYWJsZT8KCkFjY29yZGluZyB0byB0aGUgcmVzdWx0
IGFib3ZlLCBmb28yIGlzIHJlbWFpbmluZy4KClRoZSBiZWhhdmlvciBpcyB0aGUgc2FtZSBmb3Ig
b2JqLXkgYmVjYXVzZSBMVE8gaXMgcnVuIGFnYWluc3QKdm1saW51eC5vLCB3aGljaCBpcyBhIHJl
bG9jYXRhYmxlIEVMRi4KClNpZ25lZC1vZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSA8bWFzYWhpcm95
QGtlcm5lbC5vcmc+Ci0tLQoga2VybmVsL01ha2VmaWxlICAgICAgICB8ICAzICsrKwoga2VybmVs
L2x0by10ZXN0LWEuYyAgICB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKIGtlcm5lbC9sdG8t
dGVzdC1hLmggICAgfCAgMyArKysKIGtlcm5lbC9sdG8tdGVzdC1tYWluLmMgfCAxMiArKysrKysr
KysrKysKIDQgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGtlcm5lbC9sdG8tdGVzdC1hLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvbHRvLXRl
c3QtYS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2x0by10ZXN0LW1haW4uYwoKZGlmZiAt
LWdpdCBhL2tlcm5lbC9NYWtlZmlsZSBiL2tlcm5lbC9NYWtlZmlsZQppbmRleCA5YTIwMDE2ZDQ5
MDAuLjIxMTEyNTFjMjA5MyAxMDA2NDQKLS0tIGEva2VybmVsL01ha2VmaWxlCisrKyBiL2tlcm5l
bC9NYWtlZmlsZQpAQCAtMTQ3LDMgKzE0Nyw2IEBAICQob2JqKS9raGVhZGVyc19kYXRhLnRhci54
ejogRk9SQ0UKIAkkKGNhbGwgY21kLGdlbmlraCkKIAogY2xlYW4tZmlsZXMgOj0ga2hlYWRlcnNf
ZGF0YS50YXIueHoga2hlYWRlcnMubWQ1CisKK29iai1tICs9IGx0by10ZXN0Lm8KK2x0by10ZXN0
LW9ianMgOj0gbHRvLXRlc3QtYS5vIGx0by10ZXN0LW1haW4ubwpkaWZmIC0tZ2l0IGEva2VybmVs
L2x0by10ZXN0LWEuYyBiL2tlcm5lbC9sdG8tdGVzdC1hLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi4xNWNkYzMyMGVjMWUKLS0tIC9kZXYvbnVsbAorKysgYi9rZXJu
ZWwvbHRvLXRlc3QtYS5jCkBAIC0wLDAgKzEsMjIgQEAKKyNpbmNsdWRlICJsdG8tdGVzdC1hLmgi
CisKK3N0YXRpYyBzaWduZWQgaW50IGkgPSAwOworCit2b2lkIGZvbzIodm9pZCkgeworICBpID0g
LTE7Cit9CisKK3N0YXRpYyBpbnQgZm9vMyh2b2lkKSB7CisgIGZvbzQoKTsKKyAgcmV0dXJuIDEw
OworfQorCitpbnQgZm9vMSh2b2lkKSB7CisgIGludCBkYXRhID0gMDsKKworICBpZiAoaSA8IDAp
CisgICAgZGF0YSA9IGZvbzMoKTsKKworICBkYXRhID0gZGF0YSArIDQyOworICByZXR1cm4gZGF0
YTsKK30KZGlmZiAtLWdpdCBhL2tlcm5lbC9sdG8tdGVzdC1hLmggYi9rZXJuZWwvbHRvLXRlc3Qt
YS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZmNhNGQxM2E1MmUw
Ci0tLSAvZGV2L251bGwKKysrIGIva2VybmVsL2x0by10ZXN0LWEuaApAQCAtMCwwICsxLDMgQEAK
K2V4dGVybiBpbnQgZm9vMSh2b2lkKTsKK2V4dGVybiB2b2lkIGZvbzIodm9pZCk7CitleHRlcm4g
dm9pZCBmb280KHZvaWQpOwpkaWZmIC0tZ2l0IGEva2VybmVsL2x0by10ZXN0LW1haW4uYyBiL2tl
cm5lbC9sdG8tdGVzdC1tYWluLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi42ZThjYWEyYzc2NjcKLS0tIC9kZXYvbnVsbAorKysgYi9rZXJuZWwvbHRvLXRlc3QtbWFp
bi5jCkBAIC0wLDAgKzEsMTIgQEAKKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRl
IDxsaW51eC9leHBvcnQuaD4KKyNpbmNsdWRlICJsdG8tdGVzdC1hLmgiCisKK3ZvaWQgZm9vNCh2
b2lkKSB7CisgIHByaW50aygiSGlcbiIpOworfQorCitpbnQgbHRvX3Rlc3RfbWFpbih2b2lkKSB7
CisgIHJldHVybiBmb28xKCk7Cit9CitFWFBPUlRfU1lNQk9MKGx0b190ZXN0X21haW4pOwotLSAK
Mi4yNS4xCgo=
--000000000000c3236d05ae9a2200--
