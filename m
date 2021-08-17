Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7UB5SEAMGQE7PNTU4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9443EE0CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:19 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id k3-20020a170902c403b029012d1b645e45sf11831878plk.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159678; cv=pass;
        d=google.com; s=arc-20160816;
        b=IKTAmqTPUK/YbiZD/RkAHGSgrLJHKJxLi8R3F5calAVZ1AxuM/Z4P+MzmVRRzNGmCy
         WFCysHcOhHj4TJgBnN4YdgHFz3ij8Tp3OwyOUJyGesp9mpPDt65doYH+VoqB0bWeFd9t
         pR4ptFgs6mCOZEqGCU+KzlMlblv/Bg0be541naislGsKDQ1CguFxccVfjkWOGRUbH8Pi
         2InhXLAuq0p7wcqnvmdDRFiBVYNvQf/89NxG8QEtxf0PisOBAyk4qDzr++Ldz1fxbQ6a
         v2MXQOR74H3mUZuFZiUI3P8kFgBrOBcRtqFQiJmHFywEV2xz33elWB8trvqz37REzb+1
         SBvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=IK/YEt+oxsWnbSIvZIANrBnvx71/hcwBhmCNW/l0cco=;
        b=TGBahkOjOx9wCeyWp0N8YBD4dn3P0sEI2g95i07JH+zUTDQ4IPBcC/Tci2DZMYAk59
         BguIVvK3+vZYzanYLb0c04fjpRHAwOZDifoPyBtc8tAc20SxCBAatZNhVsVGKLwVY2gw
         8ULN4A+czYfolLxcghbIasUBYlDwAQglJqtJNZTvso38CaLHjgRNeGbtlBF4sOEjW3Sl
         9DQaUuZc9Kp6+V5YJpfXNpg+GhSrjQNZHGWLQJ0+qa/JusUATFucB1rbAVp+W+72QFlC
         8Cs0iHni6pISvVWzBapRciFf/r8kR1NVePmhbH51B+e6F15lGFpNPdYCL2prGML5kIyk
         Bl8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXTMmJss;
       spf=pass (google.com: domain of 3_aabyqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_AAbYQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IK/YEt+oxsWnbSIvZIANrBnvx71/hcwBhmCNW/l0cco=;
        b=G0y1WPXhoaMt5hgI3YSREegQ8eWsHE0XKjhq/OwwUWGBNgzF/nHFokEa08NGxF/uPD
         wsscs9/JMR0sOxk5xVztbwxBOHvqRq9JGxNa65uICdHatOJoIhmBqi6PDgFg5vbo9n6B
         bW8LXb8x9Oq7jvrnlV+tjnzPrGX8CXR8dRBppkfGDApRIZaMcTp9GwA7c+7liqdtq64P
         Q2Mk9di+OdoyEjPBKPkj+H8hS2OvxnkK/qwzrMsatar3nmJFdSyvOPhmQuVdskJQUvUo
         c7/rJCBvVZyTcW3gnwCa1Sh8q8S6drrk6hFismi494tbZpUpofn2meaG1kSCTmWpMerT
         GuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IK/YEt+oxsWnbSIvZIANrBnvx71/hcwBhmCNW/l0cco=;
        b=Df7kFov0qZLKBmVlX9mM7g94LSDoSWI6I3uXqY2wICbbUthn8O24BcZTHPLWplh1CG
         +1/tXfMcOLf/HQB3nkUoEcffWh0I95OPJv3ku8It6s3pc5cUCahaF9m0GSPTuH8KxdFd
         URQ3p5isvhjMv9amDFgX0dVcVDdCPmbWX4AR/X2thDuIFmC6fdaZVB0tMVKVorxpqpBm
         ATnv/HJPZW5P6f1XRPGYivfgO7ilHEy8dy00BuQBL7U80+UdTkOytFtzoVFkBEq32I2m
         2Shley+uD0YT3mMkDeZN5mV1+BmHs/TEIyBzj56qerT+K1/+qnYHbiv35ZHEgIjHQX+n
         UXyw==
X-Gm-Message-State: AOAM533YVSaMjVbvkgBNepZIZHZov1Sy8Ruwb/oDekJZ7nkXkbgoESnL
	1TRWivD/w2slRZSXynMdPoc=
X-Google-Smtp-Source: ABdhPJwTr4S/rYVuuilQySbgkSn+rK+wWE1wE5JmFVmax+z3cNpiHXEYxmP7sMCmads20WZDok21UA==
X-Received: by 2002:a63:215c:: with SMTP id s28mr677051pgm.99.1629159678239;
        Mon, 16 Aug 2021 17:21:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls208682plb.10.gmail; Mon, 16
 Aug 2021 17:21:17 -0700 (PDT)
X-Received: by 2002:a17:902:a705:b029:12b:71be:d24e with SMTP id w5-20020a170902a705b029012b71bed24emr665234plq.29.1629159677587;
        Mon, 16 Aug 2021 17:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159677; cv=none;
        d=google.com; s=arc-20160816;
        b=c/zqy31FUfQVMXMQJXjRRsuZTf+lnC0MLFNlL5IMY7NPsHA5a9JFVqfHdU8gnSUIcO
         uL8H4w7O329yN6YifhfmEiDEjLEOt37yGijOD8WU+PhJmQKAIfMLT9sOFOyQI6ESfMwf
         sUu2cDHvIAw+MKG7wod6qwIzvpzgARUDw70PxDi0bUE2h84MSnPSmuTLUA+qFnXm0BPA
         QSVTkg9cciwKTCqH5vCnImotXkT75AXa8y730mF0s3KH6vwmeTR8z+PgxbAXQO6GkNuC
         Gc+ERdebK7sPm1oS6BIIoGxfsyrgBx3O/a3sQFMvHXW26+Sc3jcbDByKgjehf9Et9h3j
         a0AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=GoAh6ziV2V4ZClkyAY1jCdUTNM+9oT0Sys3KyM6Hf6w=;
        b=tT+b1ZAg/6koAdlVEN3dZtSM4foQG31soca0NRZgPkeWaQ1Iu2FK7KpD8/7ve4rgxO
         +Oln4tgSG5/G6awAnx47qZ+R3Yl0ZLEX1GyWOkZchzkQk9a1yq6SgL/7Ooh7nj4Qpwm9
         IzGh0F8Ck7PCD2WGqsIKs9pHcsRb7ktTKEoZmewiDw9rx2knRNTUjI3g3IpMqqAXvVrn
         rleUHdE5pxV4KYxyaJ5zudhCZlg0SsxTwKyfCqJC9OjIQkTwziyoK7vGGcgJ2N7TP09a
         qwn316GzWKi7f/2tC+Hi4IweJtKA2RF7eV2Iyhp/tV3iOWPfm/5ANJpSFyx2jAcKHKUF
         dgUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXTMmJss;
       spf=pass (google.com: domain of 3_aabyqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_AAbYQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id m9si31830pgl.4.2021.08.16.17.21.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_aabyqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w11-20020ac857cb0000b029024e7e455d67so10183064qta.16
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:d65:: with SMTP id
 5mr595577qvs.11.1629159676946; Mon, 16 Aug 2021 17:21:16 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:02 -0700
Message-Id: <20210817002109.2736222-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 0/7] kbuild: remove cc-option-yn
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EXTMmJss;       spf=pass
 (google.com: domain of 3_aabyqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_AAbYQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to remove cc-option-yn. Do so, and update the
docs.

Base is linux-next.

Nick Desaulniers (7):
  MIPS: replace cc-option-yn uses with cc-option
  s390: replace cc-option-yn uses with cc-option
  powerpc: replace cc-option-yn uses with cc-option
  arc: replace cc-option-yn uses with cc-option
  x86: remove cc-option-yn test for -mtune=
  Makefile: replace cc-option-yn uses with cc-option
  kbuild: remove cc-option-yn, update Docs

 Documentation/kbuild/makefiles.rst | 22 ++++++---------
 Makefile                           |  2 +-
 arch/arc/Makefile                  |  3 +-
 arch/mips/Makefile                 | 44 +++++++++++++++---------------
 arch/mips/sgi-ip22/Platform        |  4 +--
 arch/powerpc/Makefile              | 12 ++++----
 arch/powerpc/boot/Makefile         |  5 +---
 arch/s390/Makefile                 | 14 +++++-----
 arch/x86/Makefile_32.cpu           |  6 ----
 scripts/Makefile.compiler          |  5 ----
 10 files changed, 49 insertions(+), 68 deletions(-)

-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-1-ndesaulniers%40google.com.
