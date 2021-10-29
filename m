Return-Path: <clang-built-linux+bncBAABB4FT52FQMGQE4II45DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA0543F77F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Oct 2021 08:51:29 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id p10-20020a05622a048a00b002ac5ce8261dsf1959585qtx.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Oct 2021 23:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635490288; cv=pass;
        d=google.com; s=arc-20160816;
        b=kDbQ+9RtqRhHGLnEklUcG9pWe4LoinssKJWOv7zdqgP9qCajSKZQJyyQOi2s7bcRnu
         na7lM/zoGhGmA18f6qyuhDAqXdmwByxMPKO/vMmdS7uKmWjFJxKW5OF1MszpitaG39mB
         jFySqTIdM6JPiESn5BXt3W0P7UsVx8ZhxkR57sr6a/EodRHR5MhFJyl7UGmXAI5GcB5x
         cQQVl5xsyL2/lSKCgBTLaPGQjmyy6BTqx6JCasCBG4fWUmjDBYGeEPgXr9/7U+JpI+e6
         qDDIiTIVgk0oX4YLRgOCUxGPI5QrVFRvmq8WPAQeuIFmfHTI9SncyEwNv3bvZxzticIU
         4FAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y4MmfqoWYbrm+fnrMKgUpIntIOs4JH13PJ1HZ0fFRto=;
        b=MFsjf+uehLcVJNr0hQbnRd5cH+yYYn8fCEO2Z1XZIHL3Migc3DN1wUCePeqyeQcdsP
         aBlDxPKI6owEBROFHuBbzHkdby6JosQfjwAZ9bI5ylODfyOYUJTYN811/PfpUfJafmH1
         g47WgDO5LrE2NL836mFiu6GNu0ryqSXCcXh30B1Jhj3jzjQHjFyG/FL4V/R7NbIZSCsf
         qcJgWDQQ/ZgEYTJTV2H1MvLz4sV/nCSffSMDmwgdg2f3nVOXLdpMwTXfzALQMyDU2nvN
         ltc0TpXTEiA1Zs4D1Zl9EH/opPCPfaRoVIpqd77O0W5ZRoFyTVQKRPmy5Um6e0BcM5YJ
         vTKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4MmfqoWYbrm+fnrMKgUpIntIOs4JH13PJ1HZ0fFRto=;
        b=Y0LrvN3fRcO7VtxECbelcONiLgVN0T1MzoxkVlcXtllfqldMfwvo4a1lPhFNbOs1BX
         ptUvckLloN7XZxZa122rukAPHlObBbIHfbMnPx+NJRN0e9NH5osmGe09P8pT6UhPP7uT
         h+gk5YjGEt34MZEy7oQLOnOMbfM/1oMcijlUZUf9jukKmk+S7sDxD3Hhnol2DW45Xbdx
         xT7nJS58/QQSyHZ7lXbF1qjrx+iqWty6IHy2kVVdGxgMCzx++5liW0OX/U5fyfnoNIN3
         FuwHs4vc6DjivggLE1PpiqmOQTcDGOXeKfSaF82kYXDwfNQSyYClK6tlnBijGa9iOikS
         8Zmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4MmfqoWYbrm+fnrMKgUpIntIOs4JH13PJ1HZ0fFRto=;
        b=EQ7+hQUQsIfGOjgObvglTVZtOC+fy095rB7qa6c4OKGEA0GrVmkmEPkTIlvrNGSvO8
         hilFowwie/hvGMoSxSQbzi1SxhN3TA6zCCCWQW0Yqw7xzYznoXDJBZH3LCqIV9e8pkUu
         UtIerIcGbRge6x4XZ+Ylg4v+h6b9qeOKVnddazlhpF1fTrElfIDE+wsSqRP020hXSCoW
         uNI5v+OS+UUVqX2UV7WBcJipSuTJBXwI4YfnkDl27dzsM9k39zkgNluqAq7NO5/YT+is
         M0fjVzHkkGz68dq9GLkkn6hmTtllJ7nBh4w5PR0FEVyyWz5Pn3yNGFtWw0Jc/Zx7lyBA
         kRjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o+HPqAaxgCKwX7/MFhFehqwLHR2uwHx5jKQuBcbclgE2BaCVV
	JQpv8fAsWV1NwTLbMhqBKGI=
X-Google-Smtp-Source: ABdhPJyBPVYB/347E2mB7PuvIef4qA/3rGBhu4ru5K7KRojz85XXNUfiUuGjLD1uSdndTuaG9hoXFQ==
X-Received: by 2002:a05:622a:1c2:: with SMTP id t2mr10118548qtw.113.1635490288523;
        Thu, 28 Oct 2021 23:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f306:: with SMTP id j6ls818082qvl.5.gmail; Thu, 28 Oct
 2021 23:51:28 -0700 (PDT)
X-Received: by 2002:a05:6214:5189:: with SMTP id kl9mr9287184qvb.65.1635490288150;
        Thu, 28 Oct 2021 23:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635490288; cv=none;
        d=google.com; s=arc-20160816;
        b=yTOQK32vMcIowS/5FESFGwA6Mk41oWfDGzGyXLE27pEXsXLdiOciwIhnCs74q3mrCG
         0frfhGvATipVPu5sUPILUsa2L21xLEon7xuMM1hM2tKFy0gnsgbuT7SWvGf6BThaWYU3
         0qe3HHB6sQ/rj6MXLuFT7ZxjP5dW7ADuzrKyUePwOq8730SHg/mS6yrvivM9eHFn3S/q
         GetFw2ofOJHDjwbMNLXYg0nAanFXqD79VUDkEAXbBnAowqJ90pEVN9/8+ROXcSPbgg4C
         DtyFK36kIQYFzEEb52DHZhsAD/jILeRR9WqLo8VUt6joCDRsIER/GiHHBeEm1j6yM2hx
         Ting==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=oEz647CJkG+PRMWnViGfRev5hWB5PBJLEtHzVmwsbZ8=;
        b=n3VZxumQ2g6GtGtbXUta0J+xaDGnVKSv7avmYKCa7arcLlDweqAlLurXLJLeErbi9C
         9WG2/aq+zOIcPt0zKqHjaoowf6DsKM+TIfAulU/QxbuYnBXN+D/CSO07ip+0Pkg+P8NT
         QuSgG91EArpmsQpZ6LbzoXceNUS0ACZvaWqLReBE3FsHjnIXCBCfRgFjCrpfagNibKf7
         7UoFRWBRc7ZZXUKWxjK/sgtIMDCbGH8UHixgGfLcIf9ipGHJFeFTvGPuu4xw1B+bQ/ZO
         HEAo9CJKlCxchqNnf96jYY7yTeRCZoFJBc2FzBfOvD9ya+Xcvw+A7lUg51zeboYcwxD0
         SlFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id m17si212516qkp.2.2021.10.28.23.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 23:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggeme762-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4HgY226XsBz8tcK;
	Fri, 29 Oct 2021 14:49:30 +0800 (CST)
Received: from huawei.com (10.67.189.2) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.15; Fri, 29
 Oct 2021 14:50:54 +0800
From: Lexi Shao <shaolexi@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-perf-users@vger.kernel.org>
CC: <james.clark@arm.com>, <acme@kernel.org>,
	<alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
	<mark.rutland@arm.com>, <mingo@redhat.com>, <namhyung@kernel.org>,
	<nixiaoming@huawei.com>, <peterz@infradead.org>, <qiuxi1@huawei.com>,
	<shaolexi@huawei.com>, <wangbing6@huawei.com>, <jeyu@kernel.org>,
	<ast@kernel.org>, <daniel@iogearbox.net>, <andrii@kernel.org>,
	<kafai@fb.com>, <songliubraving@fb.com>, <yhs@fb.com>,
	<john.fastabend@gmail.com>, <kpsingh@kernel.org>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: [PATCH v2 0/2] kallsyms: Ignore $a/$d symbols in kallsyms for ARM
Date: Fri, 29 Oct 2021 14:50:36 +0800
Message-ID: <20211029065038.39449-1-shaolexi@huawei.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <cb7e9ef7-eda4-b197-df8a-0b54f9b56181@arm.com>
References: <cb7e9ef7-eda4-b197-df8a-0b54f9b56181@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.189.2]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
X-Original-Sender: shaolexi@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=shaolexi@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

On ARM machine, $a/$d symbols are used by the compiler to mark the beginning
of code/data part in code section. These symbols are filtered out when
linking vmlinux(see scripts/kallsyms.c ignored_prefixes), but are left on
modules. So there are $a symbols in /proc/kallsyms whose address overlap
with the actual module symbols and can confuse tools such as perf when
resolving kernel symbols.

A sample stacktrace shown by perf script:
c0f2e39c schedule_hrtimeout+0x14 ([kernel.kallsyms])
bf4a66d8 $a+0x78 ([test_module]) // $a is shown instead of actual sym name
c0a4f5f4 kthread+0x15c ([kernel.kallsyms])
c0a001f8 ret_from_fork+0x14 ([kernel.kallsyms])

This patch set contains 2 patches to fix such problem:
The 1st patch modifies perf userspace tools to ignore $a/$d symbols from
/proc/kallsyms. So people can use new perf tool to get correct kernel symbol
on arm machines instead of updating kernel image.

The 2nd patch modifies the logic of loading modules to ignore arm mapping
symbols in the first place. Being left out in vmlinux and kernelspace API
(e.g. module_kallsyms_on_each_symbol) means these symbols are not used
anywhere, so it should be safe to remove them from module kallsyms list.

v2:
 - Add 2nd patch as discussed with James Clark, see:
   https://lore.kernel.org/all/c7dfbd17-85fd-b914-b90f-082abc64c9d1@arm.com/

Lexi Shao (2):
  perf symbol: ignore $a/$d symbols for ARM modules
  kallsyms: ignore arm mapping symbols when loading module

 kernel/module.c          | 19 +++++++++++--------
 tools/perf/util/symbol.c |  4 ++++
 2 files changed, 15 insertions(+), 8 deletions(-)

-- 
2.12.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211029065038.39449-1-shaolexi%40huawei.com.
