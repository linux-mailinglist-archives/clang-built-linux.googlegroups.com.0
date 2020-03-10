Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBPE4UDZQKGQERYGXYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 96816180B0B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:01:32 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id d12sf26203edq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583877692; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ji4lCtTLCEiQbah57X0HdarsybAZu8OarjSKDlZSQEh+QZi7rirXFg9l4K5jFgsoaO
         GjEHiuQnpBWVjEXQMCHteXgpjXbjihEAU6QZPelstHnwzW62fJ5sT2a7/zqGVqGoqZOR
         30q0hTXDXGXoe38kZ+UYOAwLln8NwM7YnDetbmjEwGbF5TvQykqit0PSjhtdqgbF7bNd
         2sfYYT1nRsGtOS+Xy+J9TcJnzFPfR1Cc6fp83PqOL+yHSNGl8BNMfu/7UYNwqMiZtTHx
         jCh+Bys+GhtBOSFg4VOxew/aqiNSBl3JOizwGPP4qCAW4HAkZPtzxez4R0KSJdsrdcdC
         EGrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dnPPSe7jf2ShViWM1iO4sQYzP3y8JUcHStEWlehKsi0=;
        b=Kpj1fjE6x0oeIcmwsa0wGlAHjPcM0MI6lvnrAAutEt8kcmGfusNSSisGGkC/RI6ZDH
         vx82D9MfIMKvAkCArxDmSLEfFuEhqS7Dsj6oO2TLBUWJaL7snVX3cC16Bb89Hf47uto7
         OFwtt2eMriNhAl60xSdv4qG7CstP/hr0yQEqj4yV/Y43pKNi/nITzRwaxtOpRm2K6cJF
         JgXSCJ4sVt+ExerEc6t1/MW22CXcJF7na+EvQOZgN7nzKy58porXP4WynYs6yNGQSKKs
         +lVTOxwGyzIZkVfC4DQiEvkx+hw6utVKPQ3kpfYwU9RKNMlBr0x3+O8n6pKNwT7yRFWY
         HSgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=myQMTVO9;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dnPPSe7jf2ShViWM1iO4sQYzP3y8JUcHStEWlehKsi0=;
        b=f+5GwkDs0rK97Tgl5DBcJ+/Gx2mHcm/odSPDfXvHwBFEjXeDgTRYfIPt1c9npeaAXB
         Mi0kOVNTYnXtT9n4ywYXLsc69q1cW2RNwDfZImnl0ABWSt08v88wvU+29sEzE5ZRsJMe
         ahRTpI3zAh/eRKz06Ky/tP2OitGCZyB6srkP0cZMGF1vwP/3GEFd+iEkN4yStfb3GFrK
         2AuypT7hF9e82J8yn3A0SyjB2vmPQsRHruztUq+Pft8GGwSbjPgNIvo9WfPqZ0kAbI0f
         A1RlXeNni/7BPqvFEQ4reGrhXYiNW6wogR3tcHX4GwcThyNw8zAw9osQwANueb97QJ2f
         uZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dnPPSe7jf2ShViWM1iO4sQYzP3y8JUcHStEWlehKsi0=;
        b=H6brQAVWcNyr740PHmDUfmJLNe2LquCH0XsodgstCOGnqe/f1wSCIO8eXGfExMPEUa
         6zp6Odx+W91wP024vAZrcCxZROjCLZ8/uG56Nz5Fu9OIdvN04mF7DUvXrRqQtQR1gr0X
         UtUM9b6LkeP3bxexHSfP2ETiGrBp78fZVDML9ky7wkUJUG1DAo4vRMnlTp0q46u+cZxF
         60CAeTAWFkzJJcWtcbLzqaygTskfzPexcovN0uh16HCjif9AIyEpl37ffKNlfo/zQ+/s
         Pe2XpGE5KwmJW0Ov0mKqP2bCxIE/MBkXmqGE9fQO6qE/6YmdEkxkCwmRFujxUUUuCgtl
         QOsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1TjCG6KmbCGW6VrmFpZNJymrM9pZm8gIfZiDatCAWqWTz86ijp
	OvNkj+BELLqKEvf+czhOQEo=
X-Google-Smtp-Source: ADFU+vu4LzjKMeL2UP+QP8evekHaiVJjaoMWITX3pQsxksGNhJiys5+1MDTHOOnvC+luHCqMwtAjNg==
X-Received: by 2002:a05:6402:1b09:: with SMTP id by9mr24538276edb.23.1583877692332;
        Tue, 10 Mar 2020 15:01:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls16078ejb.6.gmail; Tue, 10
 Mar 2020 15:01:31 -0700 (PDT)
X-Received: by 2002:a17:906:f24e:: with SMTP id gy14mr21237198ejb.165.1583877691734;
        Tue, 10 Mar 2020 15:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583877691; cv=none;
        d=google.com; s=arc-20160816;
        b=S6e8+V61MBtbAEjphe2KAS0UJwjwGvApZREKNd7XPqMEPzNrg+uUnJ4Yoj08MWexX5
         y8Y0m9tXHpeH7czsBUf309GODHu9PY971/VLJHw9rSVaKEu+XKf4ZaKS/iqY9UOuIHwQ
         Ki/ImLuBqz1lmsw7WTYtnzdfbdASMvn66tEMCw+Ly4cqjj/tURt/u2g1t/kC53mSwEM8
         RxQhCJqoQVsZQrjtyfzv3kzFjTVS8lzP+DNwZmrDRR6LSDrO1s+p6rC+xPRJKAQx8zVH
         02GUl/Ey4dLfw58gWddmYfsUoAYFjQW9NFDMOzKuH5zUy3zcFQLR9jmv+DgfEL4BdDt5
         4Ysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=y9mUQ47Qx5sWxU4e4s/o/28BEccjHtCQBjF8z/UpJQA=;
        b=I74uogItFHkj3bPO7TyTHMBzp8F0GH+ngRxN8wJn+TlaXI6M945Cak2NnacM9XEJJd
         +raZGsC1EWumyW5OyV41VGqIKMDk1XW+tafbr/XCjJE0V/ClHCqeC6dNuzJZlo3gcgqi
         D3HIk5Ty74AQf9TP2PKehyx3M6ae7S45UPKzsxhsxzWpCcw02BvMRWhFbE5oEPu9AomD
         AE3GOiSXY4Sna372vv+rzBrCHwmOqj8GH/z3iv/8S8YbGCj9zLFAruypLg+FzH0YV2ox
         /in84eJG2InoOQBgNBPhABbzMCX7TtaiiY3c3ubRl0Bh1dWH1OUgjI3etooJIM3k5gc9
         PZlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=myQMTVO9;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id h10si6659edn.1.2020.03.10.15.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 1E5BF5C2157;
	Tue, 10 Mar 2020 23:01:25 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH 0/3] ARM: make use of UAL VFP mnemonics when possible
Date: Tue, 10 Mar 2020 23:01:18 +0100
Message-Id: <cover.1583360296.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=myQMTVO9;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
Content-Type: text/plain; charset="UTF-8"
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

To build the kernel with Clang's integrated assembler the VFP code needs
to make use of the unified assembler language (UAL) VFP mnemonics.

At first I tried to get rid of the co-processor instructions to access
the floating point unit along with the macros completely. However, due
to missing FPINST/FPINST2 argument support in older binutils versions we
have to keep them around. Once we drop support for binutils 2.24 and
older, the move to UAL VFP mnemonics will be straight forward with this
changes applied.

Tested using Clang with integrated assembler as well as external
(binutils assembler), various gcc/binutils version down to 4.7/2.23.
Disassembled and compared the object files in arch/arm/vfp/ to make
sure this changes leads to the same code. Besides different inlining
behavior I was not able to spot a difference.

This replaces (and extends) my earlier patch "ARM: use assembly mnemonics
for VFP register access"
http://lore.kernel.org/r/8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch

--
Stefan

Stefan Agner (3):
  ARM: use .fpu assembler directives instead of assembler arguments
  ARM: use VFP assembler mnemonics in register load/store macros
  ARM: use VFP assembler mnemonics if available

 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 31 ++++++++++++++++++++++---------
 arch/arm/vfp/Makefile            |  5 ++++-
 arch/arm/vfp/vfphw.S             | 31 ++++++++++++++++++++-----------
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 5 files changed, 67 insertions(+), 25 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1583360296.git.stefan%40agner.ch.
