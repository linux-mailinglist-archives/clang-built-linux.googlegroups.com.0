Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTUZU37AKGQET5IWKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF192CE4B9
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:11:43 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id z129sf3637892qkb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:11:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607044302; cv=pass;
        d=google.com; s=arc-20160816;
        b=LikChyUggpynTn2zyb6eg6WmnSIv5+lDPE6FZND+Q1JknsFq6tMfVHOBjpGzEtFWVz
         5/pSVYMBJthKYHMvznqHqbtDoG5S8raLDkq4ObWeQX1YU9b7qQaRaXemTAfGKvKvqHFV
         5h6kxBOmIZDr4MqauzbHTguucDwempFAYXiCKGW4nYKXNXwqTFlgRYdLkxPevsq5eeQ0
         C+Ta1WoyMamQ31zdAlDu5WNz6/W6apa2zldROFtr9FaJ40th4q6Iy/M+6b/5z1g/e45h
         Qa/L9OXbXi0v8V3umGvLvTnywGT9ERp6uj6/nWg3V+P+DSCXN89K2hXBhAqSomyB0I7/
         LyTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=2f33kPD0po0zuEBeoQkSxC8YRTwFAo2hMhNmMUSpRvc=;
        b=uxNbUQuaiahRBZI4gob4lgcXH93I0hvLp5V423isbuttO0HulEnpDUXJOKATFUGT5A
         F4jdfCWNlOdIZpsbbABUH4eaauuuN4/hRTKsoToBKbYY0hiaSPuhL8dBsepnDcyamOHo
         Y/ehkLxKFJfttMPhmaDAt+RIAogEDXn/ZOdkcETqR4zmH+mS+5jBIbhqtR9cVzjVJfge
         4vGDSN2ZKCC3JXuKnfbg5Iq1Sd4WAY+S27LUV2tgYS3kSmpLpyeEYVB2jGBhrg6SMIHG
         h0TFc2Q5bCTLUE0t7UXZ30GbhkKfj21aUGHCA7vJu5zrJLHnf9OSd88J+GRIEgvkrrah
         uZSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6LcrvBY;
       spf=pass (google.com: domain of 3zyzjxwwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zYzJXwwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2f33kPD0po0zuEBeoQkSxC8YRTwFAo2hMhNmMUSpRvc=;
        b=mu2BJnhfCmCN1h1jEIrzv6i2efj2LDSMxRCwjtEtcxgTw+YdCsAEsXbVu03vW+T+Hw
         5mZ28Qvs9RlDg75L7YEcl4KzCH5QkM2PxhNAVx7aa8rYDu1lTu6Ij8SAxb6c5JR8QTUX
         6gbjZ3crdnsW6ZbLVfC+U2OSRG+lVtpgor/uCzma0HcaTNPv/LRiKl/0OoADnerD4NVI
         EUmfctKkCQdifPV22rnF8rX99st0o5AjNqVGV8NGxX7C5teQupcYsldSYq+2GTLNtRLe
         ZyQOoXAxeF1krpYyrtc3vbEQzgS2m8HyCb+y+HG3/KKn/u5CPsKBR2bYVAbCCC3EvOtr
         VtIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2f33kPD0po0zuEBeoQkSxC8YRTwFAo2hMhNmMUSpRvc=;
        b=YIXaAjKrqCHYda8z42RFkfh2KrnoCo8I7nOcTnvwdy+8KsV4tRErMMpFYtjIGUF7xQ
         FRxfjQNw9nvm8e6IlwJgs4fqZyawM91WnFYZ1aUlrWAQYTPd3IFgvKYllrvCxl7fdrtH
         fT2BFmzjPFTPln6q6+eSnHiedqzs+C9z+E1aY/D/vskhtjlvwJjwltWNWtkoRIKx23H1
         oHbspnd8DUBc2E8ZpFWJTjAMiUxYJfN7BorvhmzrlfKTQmeChDNpez6/TAMhN+6eU2Gi
         cWpHwOq7Ty8cuzRgQKOQdFoig4/a/DciXZvW1KBIg1Ot8uKvVcDP0FD2V2Mnv9C1a0yB
         U4Dw==
X-Gm-Message-State: AOAM531ak8/tc3RQY0TttqtGDXt7Q9cWegfyLMxt5zR31dh1sw6NZiYH
	72Ly4qlADayOsQMLByXgHIA=
X-Google-Smtp-Source: ABdhPJw1dxuM4C75KH90lxK9feYax7xKfoW7FclSlGWTKuPWaVm5KACs3zZnTZa3+ipni3H96skpzQ==
X-Received: by 2002:a0c:abcb:: with SMTP id k11mr2354715qvb.36.1607044302184;
        Thu, 03 Dec 2020 17:11:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:30ea:: with SMTP id 97ls423130qtf.9.gmail; Thu, 03 Dec
 2020 17:11:41 -0800 (PST)
X-Received: by 2002:ac8:67da:: with SMTP id r26mr6322820qtp.101.1607044301769;
        Thu, 03 Dec 2020 17:11:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607044301; cv=none;
        d=google.com; s=arc-20160816;
        b=lCt3w+zgS9ImbGm7jEBfDh3h0VMOcRg/wyPFVorvr9RcNhWs+PCpWPWYdOhK/Dcge2
         pvIom7Q1H3vLphKydf2UjGeLAH2XDM7sHzDlbu4Geb4yzwvPgOutCXPdDZjdEob4iLYM
         isUiKSjNzj9Zcm044HqDIV4dcK/R+Zkkr3CeNsS3rpOrYc6s0Yuws9mgAorBzuXezR5B
         cX3rKaOe11UWJmOLKrAaLdvPTFh4YR7g7j/+hoMX1jv/nsrDIRMC5b+G0ayNS2YdN7Ja
         Nq0YTUfZy8YMVk+sWq4mYRJWU4dnVYu6I0aiM3/AbRZlkk/vBkrjxovqqlRShGVm4oaX
         gF1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=+amQfXmmyyQwHc7A0zR2YCV7OYKFlTEEQHhDhfMNVCU=;
        b=moBO5qRYnW9Pnm2LBeWHH40OAEyCCTOMIwGWyFwBhgoQmW5lfSlQXhbO5DLkrGrXnb
         r7tdunnGzdPqxvvKUxKIFRoqkUEsU/iasNpmS9cvlugCJO5oKRaERKnRZz8SRbdwlN2s
         wi3mlzehi712oeig4y37vayM6qz6HE2YFq7lxTdDniIEudy8zgWOd2T52QiKTl8b0KAj
         yrMyHx+r7GvzKBeluyQxw7Ji1Mjwlq2eKddYyHJFbHiacb1kICg+QZCNLWuohUZ+nQdw
         I8xBzwvnSoXu0ZHugOiqKrc4vV47GoOj6uY92QlUHHoFiOxmkoSTRmQ01uqUwPpcSd+j
         bhDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6LcrvBY;
       spf=pass (google.com: domain of 3zyzjxwwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zYzJXwwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id n21si252730qkh.0.2020.12.03.17.11.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:11:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zyzjxwwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o12so3133892qtw.14
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 17:11:41 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:e844:: with SMTP id
 l4mr2211767qvo.15.1607044301486; Thu, 03 Dec 2020 17:11:41 -0800 (PST)
Date: Thu,  3 Dec 2020 17:11:28 -0800
In-Reply-To: <20201204011129.2493105-1-ndesaulniers@google.com>
Message-Id: <20201204011129.2493105-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v3 0/2] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux@googlegroups.com, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J6LcrvBY;       spf=pass
 (google.com: domain of 3zyzjxwwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zYzJXwwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
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

DWARF5 wins significantly in terms of size when mixed with compression
(CONFIG_DEBUG_INFO_COMPRESSED).

Link: http://www.dwarfstd.org/doc/DWARF5.pdf

Patch 1 is a cleanup that lays the ground work and isn't DWARF
v5 specific.
Patch 2 implements Kconfig and Kbuild support for DWARFv5.

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

 Makefile                          | 15 +++++++------
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 35 ++++++++++++++++++++++++++-----
 scripts/test_dwarf5_support.sh    |  9 ++++++++
 4 files changed, 53 insertions(+), 12 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204011129.2493105-3-ndesaulniers%40google.com.
