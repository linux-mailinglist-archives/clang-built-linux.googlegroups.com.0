Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGK2GAAMGQEGAXQIMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB49308D8E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 20:43:25 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id t21sf4525892oif.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 11:43:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611949405; cv=pass;
        d=google.com; s=arc-20160816;
        b=CPYj8H3hDiDf8n51HaZKH9Xc7w+qrM8cCtwAfYC0Ssd9rukUpmJ83JHphUnR4JWsoj
         9FZ/OiqBgixG9KbxUdEGFUsvS4/srzy8kU+819vT/7IMIyqmNHQkw2TAJbdANM1kjQsU
         tbtpknQQ642atYug4dmuRuNTwyZvfUR8nNnW30wNRnemWdZciOvNVn9ro2zlR71pnjO2
         J77yo336D8VRv1bMGETDQpiGHZr9BVcIhnaxWQFX+q3sj4mX0iQ6at82dCnUh4qvTN7A
         sioLIzhDgG+vXtOWN4enb/gCtkh6o+Z/daZmeRo9ji5xL2cE2C+4oVWto9Mh2zN0NEXb
         ugqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=cOTNS0KhczF/l8gN5w5LLkiFYj8fCZSeObNNXV4Fb1A=;
        b=Pq5pGl6Rr0QnNd2sgReyLcy3KbiM+cahhmzvI8aGz9fvnA4jpAt6wlTZ6CvKJwsAJ0
         ScMpiq+jeumeq5Bc3isE17SmDTO47fYWubpAXy6dAFwU6EBm9wRldJ+iBRV9XNhXRBRE
         fzu//rZGYsSVeodMoapu3s3g6qcJOqh/wIflh2xxdDhCwL1xZQ4wAqJHkfFHqzpyL4Ac
         v8LLLfqd8fOg2HS75BwVrZFb0mNoAsUY0nfq6iZ4UBwOUqcIalN1s8Dr/t7jRlZPRu5Z
         RS0WV3+d/yvK9c5daiHk5vn9HaFlNzW01fEG+1XhEztoVFtolOTphIu+JTmTy9pYZDZX
         JEhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n3LuAM9o;
       spf=pass (google.com: domain of 3w2uuyawkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3W2UUYAwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cOTNS0KhczF/l8gN5w5LLkiFYj8fCZSeObNNXV4Fb1A=;
        b=aCrPYhgM5gL1CpbVON8GF75FHWbWfCelGyapd9IZjzXjXROgS9yEywRHDhUcat3kmm
         Tuzc5GCH+OAj3/H+1NkI0lkByk+KNPUV9/D+AkytzCJwmeVpBp0EK761t6fzwEf7462g
         DCB8V7X47xhrhbW6VAb04MTovOE/l6tzrU3x4KChRXdXXg23QK0x/6NAC4sCc6o8Lc7N
         lhuUJIrkwCfomVkwnSjC0cvywMX6+xDDA3aT/qoGR+Md2saWMBlWEDx7uNgRqtX5hWKa
         AMsMOMFrXoRdLSUKjA/P0X2YH6udLdkJO/KQp8Ute8Syxh8W7VhvChKvtXtRFd6dMoES
         sF4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cOTNS0KhczF/l8gN5w5LLkiFYj8fCZSeObNNXV4Fb1A=;
        b=A76OrgUsv/KsKdvsz9y7+keUwxo8+Q8ZltidaZ4jAQFZW6TgDzleQyc7wU06RPrJgc
         fmF0f/WP216QpLl207P1oPsKkXDY9z0/j+LtKWIKKJuDafN1oHb5ECZUiGDMxYw6uhOr
         zplewwARA4YBikBDpAB1JP0omvu8bts2kmC6MAbciWVNG9shv9P1vax3ZdrXHFWOnNFX
         v2UCCascBL44XNdjxj3RaXm+w8v2zbPGeiEZ4a9L8QEyhDavAUUz3ml1aSttv2v/QvQn
         GHofa7U7IeThb+fsayTdcRBAp1RZdkzQMwtrFsgcpNwCebsKkZCIAxp/KxBxnFkwumDJ
         JQxA==
X-Gm-Message-State: AOAM530lRePanYHcUWEurKKxmWV9/VQwNvxhLs8XaVmeweIy8/rSYFgr
	8qlQD0FdQ+d89lFjMBII9qA=
X-Google-Smtp-Source: ABdhPJwGak4iYSR4FRetl/8JXqQ7Xx3xAl9Wj+EIDkE7TB0dBQhBnTFbGURNzArPUGhNHYgHscNfDQ==
X-Received: by 2002:aca:110b:: with SMTP id 11mr3479262oir.174.1611949404952;
        Fri, 29 Jan 2021 11:43:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2319042oif.10.gmail; Fri, 29
 Jan 2021 11:43:24 -0800 (PST)
X-Received: by 2002:aca:ed94:: with SMTP id l142mr3471359oih.43.1611949404509;
        Fri, 29 Jan 2021 11:43:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611949404; cv=none;
        d=google.com; s=arc-20160816;
        b=0Hym1v8+/QoqCQYQoh20tscR7vCVd1ac3C8apsYaRndznXtZqMcThJwJLHssbdGGab
         LzF9nuM57x/KY4JlcTSM/Bir2swuTYhEgzvatMbOOGNOKMNF3zlOMqPW2XmqzotfQnxU
         Rq0VXz8PIKQgxfRD31Nmk/Xm0PnaMEhmLB7BA7iopD6tuCkC7NKlGrfn2G75J8lPCtVY
         PJBhNk9dwVeRwPHMCmyFWIcnVeee0z/b4cyWtD+4WyMnvdU2xa1EgBr2d9aY2x0B+LjY
         zk7v/nY+NPXWGziH2dPqvKepvjKyC2W19Z5hzBnnt5NzudhkZXCx6pEDLcTlnJTF5aFE
         Mg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=3SeeNcVsK2P/XlQ94PAyrrJlSF2nsUa9roDX0u/Qyk0=;
        b=gQRPAvZXRLQTYeDa5wA6/+eMLBqTne0eeuqSqKwiGQx1PY+TOcbctQZ65cThXA4Ylh
         lw5J/YIsg52jmvSLWtsAzPKk7G5bvcVODPIIyQzScSxgy2YRlDSvg0LMd49X2oF23bSV
         UbIwcALbNLmFR+U80CljnjzTnL5qr8NtAVWcsVaYUs0RVVFkJh2WipkMDOhUq2m7IgKx
         /s3o0EhY1PepX6/Aim9Zi5loR+ahZAc+8ybf0fSCNXOvsPuheVftY86+sa1Ed27i2SNJ
         uqCpsR9HFFBY8o+1kZR8G+z2yt1rnaJAjnz7rR3gGqR7niMRdGXdh0nN/WIjHN6TOGvY
         te5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n3LuAM9o;
       spf=pass (google.com: domain of 3w2uuyawkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3W2UUYAwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id s139si664330oih.5.2021.01.29.11.43.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 11:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3w2uuyawkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id t186so41527qke.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 11:43:24 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:186b:: with SMTP id
 eh11mr5646289qvb.30.1611949403920; Fri, 29 Jan 2021 11:43:23 -0800 (PST)
Date: Fri, 29 Jan 2021 11:43:16 -0800
Message-Id: <20210129194318.2125748-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v6 0/2] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n3LuAM9o;       spf=pass
 (google.com: domain of 3w2uuyawkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3W2UUYAwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

DWARF v5 is the latest standard of the DWARF debug info format.

DWARF5 wins significantly in terms of size and especially so when mixed
with compression (CONFIG_DEBUG_INFO_COMPRESSED).

Link: http://www.dwarfstd.org/doc/DWARF5.pdf

Patch 1 is a cleanup that lays the ground work and isn't DWARF
v5 specific.
Patch 2 implements Kconfig and Kbuild support for DWARFv5.

Changes from v5:
* Drop previous patch 1, it has been accepted into kbuild:
  https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44
* Trying to set -Wa,-gdwarf-4 in the earlier patch was the source of
  additional complexity. Drop it that part of the patch. We can revisit
  clang without the integrated assembler setting -Wa,-gdwarf-4 later.
  That is a separate problem from generally supporting DWARF v5.
* Rework the final patch for clang without the integrated assembler.
  -Wa,-gdwarf-5 is required for DWARF5 in that case otherwise GAS will
  not accept the assembler directives clang produces from C code when
  generating asm.

Changes from v4:
* drop set -e from script as per Nathan.
* add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
* Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
  Masahiro. Sorry it took me a few tries to understand the point (I
  might still not), but it looks much cleaner this way. Sorry Nathan, I
  did not carry forward your previous reviews as a result, but I would
  appreciate if you could look again.
* Add Nathan's reviewed by tag to patch 1.
* Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
  binutils addition later, and BTF issue.
* I still happen to see a pahole related error spew for the combination
  of:
  * LLVM=1
  * LLVM_IAS=1
  * CONFIG_DEBUG_INFO_DWARF4
  * CONFIG_DEBUG_INFO_BTF
  Though they're non-fatal to the build. I'm not sure yet why removing
  any one of the above prevents the warning spew. Maybe we'll need a v6.

Changes from v3:

Changes as per Arvind:
* only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
* add -gdwarf-5 to Kconfig shell script.
* only run Kconfig shell script for Clang.

Apologies to Sedat and Nathan; I appreciate previous testing/review, but
I did no carry forward your Tested-by and Reviewed-by tags, as the
patches have changed too much IMO.

Changes from v2:
* Drop two of the earlier patches that have been accepted already.
* Add measurements with GCC 10.2 to commit message.
* Update help text as per Arvind with help from Caroline.
* Improve case/wording between DWARF Versions as per Masahiro.

Changes from the RFC:
* split patch in 3 patch series, include Fangrui's patch, too.
* prefer `DWARF vX` format, as per Fangrui.
* use spaces between assignment in Makefile as per Masahiro.
* simplify setting dwarf-version-y as per Masahiro.
* indent `prompt` in Kconfig change as per Masahiro.
* remove explicit default in Kconfig as per Masahiro.
* add comments to test_dwarf5_support.sh.
* change echo in test_dwarf5_support.sh as per Masahiro.
* remove -u from test_dwarf5_support.sh as per Masahiro.
* add a -gdwarf-5 cc-option check to Kconfig as per Jakub.

Nick Desaulniers (2):
  Kbuild: make DWARF version a choice
  Kbuild: implement support for DWARF v5

 Makefile                          | 16 ++++++++++--
 include/asm-generic/vmlinux.lds.h |  6 ++++-
 lib/Kconfig.debug                 | 41 ++++++++++++++++++++++++++-----
 scripts/test_dwarf5_support.sh    |  8 ++++++
 4 files changed, 62 insertions(+), 9 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129194318.2125748-1-ndesaulniers%40google.com.
