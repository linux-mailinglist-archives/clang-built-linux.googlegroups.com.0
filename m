Return-Path: <clang-built-linux+bncBAABB3FSZWAAMGQESXGP2AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id D72EA308281
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 01:40:13 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id m1sf6263246ilj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 16:40:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611880812; cv=pass;
        d=google.com; s=arc-20160816;
        b=iVS8S3nyboidyoBn9Y0kowYENweAKwcpAOPvAcP2V5PXgaz2kbq3XWOHLjb5Gnx6ln
         A1yCv+gsoEN7guK7QOwn/Uemio4U0Gz3jlmwwp12Sm9c4rhZLjkBEUZstnVm9EWuE3jf
         GPX4wrHoRsDLe2VyZCHVC/MvgSHtnJjnjPlg7Msf8lBVJbhSVjcY5/21obF6sPH1nu7l
         BQajwaK3Ud8MWLlzfsP5BaWynyAXYkcYlT3of3Nn+YoedluSYhXGLwQ1TjPwXbbUFSUT
         /so3r0XNxo6x3YwJmtyWOTwAc8S83Az2yvVjRh7rqqogB7aRZ4so5juyn9CKrKA2o4XA
         eFog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=Azm22u5iNTWr1tJVfPoZ5FrILa/Pkkoemx/V3qQdJ9o=;
        b=Bk9L/OqzXntcsEkwPb0tEGvb3vQJCfPX3AD7opVgg0R9mx3wIu4dYxozKJdotnkG8q
         g3zCIk2ci5JIiENW0fTPWj9RbUiK6FQSUhbnvLG8RPfLD66N9/mnMojrid3fcamdXhje
         o7yYhNkvNdJsYHIzn2JM5oyvzxtp6ND2MqUa5wWnpPbnsXV17oFoIIAUYZccYGxrgJMH
         WLZ8UKzUKFB/TLBPr+YK9zNrmioRDtsZjEVQVY9CMonKfgldjAYlUBzzRVRP1VmxhOVw
         RWUxmCDBANZQ7cyEY2sDogPvh7ePhV5SBFbn9YC7zeuNv24MFT45gm8BvBHYAYSl/hvZ
         F6zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Mkl/WZit";
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Azm22u5iNTWr1tJVfPoZ5FrILa/Pkkoemx/V3qQdJ9o=;
        b=V/DxQua93afWp6Hh+iJSj9z6DiuaRUnZa7wHotyXiyLyNIe6HgSrBZekCK6vGJv5Bt
         VWbxz3bSUR+O0JgD/rE2a5FjxbPAECpCFa27mvGeEVJh+5th7l6sAttpnuMPh5ni1YAc
         Kwny2E1zzBwczmu6J+dXwO78TiRzfrVo8Kk8XKezh230CUYy98dinoacXjBKjHUNnzQt
         3SgPovNJsrud17/wNwJTghSAGZlzipC2pNj/mMP+jApOI45kWhu/fUpnhpDzDXNBDL6x
         PyjRrJLQDWmPCibAnL3KKpQSnQvXRnmO7kGqKUCfaGLO1mjJru4CUXQ1WhXQKGgXq9LK
         QxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Azm22u5iNTWr1tJVfPoZ5FrILa/Pkkoemx/V3qQdJ9o=;
        b=e34BOz2/M//6YjIZw1TYpbottYbNcDHde7AHOl0BCK+RwSoPZl+wF2SfKAThTs9eQW
         //06fJQ+A0GU2CZTIPTFSIc66Uk9fKefvWEw/ULx47ZjnyQzkNGoBYjAXagXOVIwhej1
         CFwBSQTiWpHsF3BMFwxuAiVTff7zHT/1VbwaOkl3dCAJrELatVQP2Po+xIrv0uz3NHQ/
         91256v0rIKIXaBWnij+PWgTsyOngPWuBGLG4lJN662+y3XXgeoRfAYg60vUHZ0KZ5N2t
         DCY/CRnAF4nh5rhaHPb5QOuWZhjiB5fx71j7iaLfhGBO/PkthMCfJXZ3MdQz+LcOvpv1
         sv8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Fx9zjTbrJwP76ON5MNksePbkvezSpuPg5RbP1uqe0S2C/zgh
	PpEHIIrHnx1i+LtcTv26bog=
X-Google-Smtp-Source: ABdhPJwgCkOoSpeg8sI3xLX0428ZALag74ew9bQLzqQf4mOuVbXo1iGKUSKnxrySFGtsqQ4y8GUnwQ==
X-Received: by 2002:a92:8701:: with SMTP id m1mr1606283ild.268.1611880812591;
        Thu, 28 Jan 2021 16:40:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls1844533ilj.10.gmail; Thu, 28 Jan
 2021 16:40:12 -0800 (PST)
X-Received: by 2002:a05:6e02:509:: with SMTP id d9mr1466841ils.150.1611880812029;
        Thu, 28 Jan 2021 16:40:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611880812; cv=none;
        d=google.com; s=arc-20160816;
        b=bHx+cPUVC4VC6jsNCGVk/D1AYDWCSZFqGvjiZT84LxMVDdJvu6RDIbpH1ZfPsjA6+I
         GwgyNb/ztYC370x4BX+aPKfAD7F9P7JoxHROjE/p50HbjUvc6pY4B4SLP37OMDND583f
         tQakbEYx3v3r1ji7eHkEOiJtU0HqY3dx89RyP1ApDPzMVYAJYd4UQcJEfbpsExXtjLIW
         7uhwk4Tfb2FbQTdi8BOcemMKa5EqbSHCrMtsJg+YFRLCS2wrESbjRghhzYl122vyiT1a
         KRi+eNMj5cxDQmwvuAOyiHoZc78ISLQFzIbxs9561/TlOZoA6cvXjownCk8R2Mi78Vek
         1BOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=O9zj+ErlPc4fVBpzicZdX+ZuegnypdpTCva5Q3lI7eE=;
        b=tP/5MlJdIGccSMRNSBqxB92nzgOtJHv6EXBXhbR3VQKpnwjoQzBmJIxsCQpiuEXfRX
         D3d8e8xqDmPCyImkddw4O/rSjMugkZmTdAzhc23XzOcyAjZ1tpK/FHY2aN04oos0RFYj
         g0P5TOGK4BZtV4CnyeBEqlJhFpXVYSogK3Kp1SMF8Ir6tqDQqEyR4hHWlbrTnI376uqD
         QZ+gQoH+9W0wjKLlSrI5jOFAM6VHzmQiu3E033sPgPwYbvwfFU+bFzk4qxwzhueLW12I
         pl0iZAuTch0PYayg1cnqihEV+Omd4b/M876oDTaGhI65vRNm9fx6D1OeinBrlCcx/7EE
         DgBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Mkl/WZit";
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k6si364640ioq.1.2021.01.28.16.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 16:40:11 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 191CA61481;
	Fri, 29 Jan 2021 00:40:11 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id F2F426530E;
	Fri, 29 Jan 2021 00:40:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH bpf-next] tools: Factor Clang, LLC and LLVM utils definitions
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161188081098.4317.7357078159366339576.git-patchwork-notify@kernel.org>
Date: Fri, 29 Jan 2021 00:40:10 +0000
References: <20210128015117.20515-1-sedat.dilek@gmail.com>
In-Reply-To: <20210128015117.20515-1-sedat.dilek@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
 kpsingh@kernel.org, peterz@infradead.org, mingo@redhat.com, acme@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 namhyung@kernel.org, shuah@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, quentin@isovalent.com, jean-philippe@linaro.org,
 tklauser@distanz.ch, iii@linux.ibm.com, hex@fb.com, eranian@google.com,
 fche@redhat.com, tommyhebb@gmail.com, mhiramat@kernel.org,
 davem@davemloft.net, dcaratti@redhat.com, briana.oursler@gmail.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Mkl/WZit";       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to bpf/bpf-next.git (refs/heads/master):

On Thu, 28 Jan 2021 02:50:58 +0100 you wrote:
> When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> 
> While looking into the source code I found duplicate assignments
> in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> 
> Move the Clang, LLC and/or LLVM utils definitions to
> tools/scripts/Makefile.include file and add missing
> includes where needed.
> Honestly, I was inspired by commit c8a950d0d3b9
> ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> 
> [...]

Here is the summary with links:
  - [bpf-next] tools: Factor Clang, LLC and LLVM utils definitions
    https://git.kernel.org/bpf/bpf-next/c/211a741cd3e1

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161188081098.4317.7357078159366339576.git-patchwork-notify%40kernel.org.
