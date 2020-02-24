Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT4X2DZAKGQEQQBMGHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9546E16ADF3
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 18:45:52 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id 14sf8646700ywg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 09:45:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582566351; cv=pass;
        d=google.com; s=arc-20160816;
        b=pl5Zzqu7pxU39riWI91uOMzKf6+dBXvhoLFEtnluaTkai7wDwqTUXYA4e+jR0YDx4p
         7YEunJtCXN4Sh6LdAdw2aOZN1g5r9PXvganue4OBae5F+xErhPh+eHG7utATY+L2hbbj
         ohDTt2uLC5AU4FZtbPFcQnZrc/F+WDkwyS31NkONU5D+wb7gTuF5Vxa1eANyKk0gbYyq
         3KBaN5UAQD2or1JmcVPGL2LPZh1VAbCkOYVMe+yKVF4L35Mt0vQD/YEAOIMdtedPShbQ
         PlnpW7oInDYJ2xZXjjErccFK2r+u9U3m0xJcqOI4HcVZfqLF1TF7etxIn1m2351EMcN0
         Ui6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=RLrtCBs20pJb2IUQn82v9yc2fga7K64RqLojIQvNkEc=;
        b=M0LVZncLIjKldZydmU4HfLd1MHKzfKnqyNw7zsg7Nb6XZOWw6CvYqHDx+9B0+pQoC0
         aCMQ2XDlZsbKtQ5XZJKuiQI/DX6eOHBF7of1pHz8BIx72vPAr5NaWmImW1zr4oUROFEK
         vw65jXgi9J5CP8KcjTUM0XlVkEf2pzTFThaGPPjW4VBn0xKrmgC6VxsEQvVCC4msDkA3
         4jBT2nhAqfLKWyaeYPGxB21oXqyIYFQwXaatgNdq/z6oJ18SRTi9vOdnOsiVcY8md0DS
         y7NycQm8Wg29KJqxLK5cwf1JlF77id8nkd9SYe9CIOwzLtwN+FIcVIrNXXxzZ29449lP
         jVHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O7PFY5Z2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RLrtCBs20pJb2IUQn82v9yc2fga7K64RqLojIQvNkEc=;
        b=rUHzj1ixkMtX3YAUlVf/Uq5TlZqvepyX6COhGFW5fL/CbAE6cuc6eCx709RK0uhbaZ
         6hj/7wIQKH1R7901+9FdmjQwC8r6h0ODAeNN8zxmnSbM0C2wziCAU7nJd1gjasAbfLIe
         DhOMN60IId16PYXq+vE6OhgwIzDuoub84NshRuwUg17usFQA58BG3gNpgaQ/swr/8IXT
         Lm4UrFYOTE4oof3Yx3T9avocosSUVrnK4wfyiDiLpLZkquKwYPe38WCHfwHskiDKIKkT
         W/fIc+W7lsMv/A0is1cxlS/JRk3OOCV+bpgeg+JVXxKcdR8qb3vHp8cPQsUhq3YIGuvj
         Hi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RLrtCBs20pJb2IUQn82v9yc2fga7K64RqLojIQvNkEc=;
        b=By4yWZcfEpHZ6qTO5JwENKCPJqINbQZ6v5sKDAE4WiNyaCcKBm9VDduKiNazUWBZxV
         +OalAjoq3bvZgcWaJJH27eu2jsFo2cxZgE8W7+CqYuaie+uXk2fyXpBd6jIkOmjd8K2U
         fAW3/8LKmEy1HE76eYBy8ia0vv3WJlmgj/1FQXtj++l5SQuEKvlnZG2RWOPg5RnR6/aQ
         eCcOOeP/IeKLzpKGhkDb7nbWdz/RhvD58Rm8TYOnR4LmS70SCkh9UtXtWP18x2adE0+U
         vB2a2zqeaNoa4zVbmXWxClolY8BpjckyoDgnql3Y4xnxvsQQ0gXfPyA2yDSmhvZuMEKv
         M1lQ==
X-Gm-Message-State: APjAAAVSJL40bN4L0RLqBiVJu1HVxxK62Tx0hCPoeCWoqV+Lhthe/tUi
	K6xTsXuYFlFlEMV0Uss+KPw=
X-Google-Smtp-Source: APXvYqxj9/P7NdeXgi+A0s+K90Ajj1myjs/fvM5zQPl1iAWtpl+xLjt3T1WodThd2BXpmjPRP+Iz+g==
X-Received: by 2002:a25:b789:: with SMTP id n9mr18321508ybh.389.1582566351402;
        Mon, 24 Feb 2020 09:45:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2e01:: with SMTP id u1ls2368590ybu.10.gmail; Mon, 24 Feb
 2020 09:45:51 -0800 (PST)
X-Received: by 2002:a25:9703:: with SMTP id d3mr3686023ybo.43.1582566351067;
        Mon, 24 Feb 2020 09:45:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582566351; cv=none;
        d=google.com; s=arc-20160816;
        b=HNwTkuo3UmeAjwWgcBOEt9i7xKGHtTDM76UO50jHAvDp6O1EKZaYRknmWrwjxA6204
         LW2OxmwdTEDl89XqwapAgGDuG8Vqlk9zz7c/K5dPoDtq7DUOB83RYl6hcnYdZ4IdEgII
         38TEtK1k4FtaV9BmQk3FM/g7sHSGzMYOK/gpoFfBYYsifcsLNj/M856X3fycxSdHZmaW
         kKumeRt8qv5cABN24NBjEIjBA1WBJEX7wV5qnqBdCvRqCqw/P2/gKxVvHEB/YmHEPspq
         ++JaK6helt+bHT7bqxNDo3SbnR2kwp5VzqVVK+EuAPEbBAPAgaQIKErIMpc2uL+0PAZI
         i9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=rXGHoYS5rHzMbjfVGY/JpUBqXXW1TGXtdGjd+PD73bs=;
        b=vW09IRoilPL6+WPG1fzQFkdJmc9kRIALzt0FLvD+yd7OYawonhOzGWxiflDgKqJcvh
         CD+z2qLowooOzgJP7RLZhP0e7M+IRpE3wPyS3xKOiD9WjpSHU5n9e4xtfus1V/bVKAdh
         +wkWL3OjCx7NUdNS4KbVq/G73H+tlCc03WHn7dOtwlT2woFK0bdmkXULAoNjjKoDGK4p
         hM2s7do9Z/+lrfhdMeEMwlf2WlNtqUUxArEwnMl4xYaKm6Hj0hhQrUPYp69Ll64PAlI0
         s0a70spCg5NOAnkRp6WKFRV985kA/fR9U7WQasxMNspv+wq7oYPKdGO3GqC3gEJoMlTL
         M/bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O7PFY5Z2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p187si900905ywe.1.2020.02.24.09.45.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 09:45:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 4so5708445pfz.9
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 09:45:51 -0800 (PST)
X-Received: by 2002:a65:6412:: with SMTP id a18mr28094169pgv.10.1582566349764;
 Mon, 24 Feb 2020 09:45:49 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 09:45:38 -0800
Message-ID: <CAKwvOdn9mpsjpAbVQbS0LC9iPtNrCZU+Pbh2Bt7kSXa4S8KQEg@mail.gmail.com>
Subject: 0-day bot testing with Clang now live
To: LKML <linux-kernel@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Chen Rong <rong.a.chen@intel.com>, 
	Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O7PFY5Z2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

Hello,
Kbuild Test Robot aka 0-day bot is now testing kernel patches with
Clang in addition to GCC and emailing patch authors.

Such email reports will have CC'ed our mailing list
<clang-built-linux@googlegroups.com> where we're active in triaging
the reports, and can help with steps to reproduce.  We'll likely fine
tune the implementation based on feedback, but the bot has been doing
these tests for months now (without emailing authors, just our list)
and has been pretty smooth.

I'll be sending more information (a patch to Documentation/) on
building the kernel with Clang shortly.
https://lore.kernel.org/lkml/20200224174129.2664-1-ndesaulniers@google.com/T/#u

We appreciate your help in ensuring the Linux kernel has not one but
two high quality open source toolchains, and 0-day bot should help us
catch regressions before they ever hit mainline.  Thanks to Rong,
Philip, Intel, and the rest of the folks contributing to 0-day bot.
And thanks to the team of folks submitting bug reports, fixing
warnings, implementing features, and discussing possible solutions.
Many many hands have gone in to making this possible.

To learn more about building the Linux kernel with LLVM, keep an eye
out for that Documentation/ patch, or see
https://clangbuiltlinux.github.io/.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn9mpsjpAbVQbS0LC9iPtNrCZU%2BPbh2Bt7kSXa4S8KQEg%40mail.gmail.com.
