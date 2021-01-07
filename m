Return-Path: <clang-built-linux+bncBAABBSHM3P7QKGQEKCTIR6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D6E2ECF20
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:53:44 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id a10sf6294286lfg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:53:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020424; cv=pass;
        d=google.com; s=arc-20160816;
        b=QwvyuYt7n0yHfIfzfqreAc90sPcaXO729Dw2o3Fm/eQcPxpZHb2osiy+gnX+w9po9b
         fP18N3URmE0Nnswq5osCPCbEQZkm5RzCY40y5+HpmgEyQnJF+2ApX3M6xWTEce6NDBTv
         MXrXa1NWQLd3tlgXMcKYQawOjvVJxHgjWPfAcJgaXcDbA12GZ1QJle9fgiuyY0LXICR4
         oRed4UbKTbf9QUUsKDdb8vkylwmyJk/zNoXBwM1iRUtEN8FNc1ldsw31XxYXsaX+0XrH
         TV/Ba4R6c7CYQ1iV1AUP0GPP7Lb4M6fJsiM0Y3+PDh7xGgwNplsczdeqHNDMrzGmON14
         Tqsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=D9enZ5Bgb2dMWDfwA0zwOoifbsIP7oWaIlJdWnOOfTc=;
        b=NJds4exJAWnHMoqdurdYdg6CRP7KZdO4wBaNfrN1cZuq7eiIFAWqFVnTxI8yvEX2tF
         BOKjTLVZSYQQ33O+81r6PHSEXv0z6ek2JqnAXUZtCvy99o8GKR3kuL82KGJNR/9A0hIl
         LmMiqJ+mad8QrexP/rR/3hqpfKgKppDim6abWph384oE5KTBqpb6EchQwVX9dkYY0IBw
         7KF2SOe89y6bE5lEpU4SeBB0574vjdv0F0UVpRosg04F+AeKvTs2hNdz0y75WL8B5yGH
         9bMa3VsG8hBCEmmYBim1H7ZkDqld3zvcpjm1sCsOyMFtGkuNGFa6aidXTwaD3/q8CEDa
         UDUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=fNwtMedX;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9enZ5Bgb2dMWDfwA0zwOoifbsIP7oWaIlJdWnOOfTc=;
        b=G6q82ANzTDOomfNUvA7pn5KqE33GmottHEOjSh6J3Gte4R5DFKosR6Smew/Xr+DOiU
         LfdTT6/0c6IFB/Xw/DPgEOnT+SDAvIdFro3h6yORmO3lKZh96akQBBZ16Pdu/PanRXqh
         wFjzTNfLisWdaLf4y8fcjL9Jc4nXKJio4XgCjz+oP9LrQrot0zMsbulQ6i54Q8SiQcMF
         yNem2jIaxtKdFoDVhU5lKOB4iNXhyVeHP8oCaK9vDZ7j1+ngs+v0NtClKoHXfQbpzfnV
         CluRgkPihhBAQIX4pYUJPAwIkBjzE6WeQFsuy6FRBrt0x5e75CyuCkrTx3c/1T2dARW6
         Oxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9enZ5Bgb2dMWDfwA0zwOoifbsIP7oWaIlJdWnOOfTc=;
        b=KpjqIh+ZNtOAUUA+mHrGIqKzKLhpS08Hm3oHmTE5tWnhzF2L+W/Bw1JB9YnVDCcoDi
         QkIQlZrZXRMOz+5SwhYhHTo5hc9pNV8jxYrgdymXik0oSVML1+8WYH5JMgwZkb6+Muu2
         hcxkFW9OhYlJSV8xM9A+m8rBKqE6mg1YK9w093Merec7ngA8lU7CYn83B87P8m7cveYs
         TpmztnZATzipXFsFwMoMUF1ZR3wLHvoS4yzghLj0z8OgS6hXTtSaEBNklgduaGKNlaEI
         YU9/yJ+xfNR/E2lb+cR9r4VIWP5/eFomEfrSr4Y1uvSNjLgGRRzQMv49bT3Gd2XSrFqb
         6NaA==
X-Gm-Message-State: AOAM531v1+oXoAwdu84LqgPf5sVNoLP8LjuoUrHuWEZdJDnluoyE12DE
	RijSuKISgufNdclmbEZ69M8=
X-Google-Smtp-Source: ABdhPJxX8DuMabbnLsMOcMBu45A3mcvJGHGF+xzhQueHEKbAg0HJkJC4jXZFjUDS7DYh0msC/PVTxw==
X-Received: by 2002:a2e:988b:: with SMTP id b11mr3880940ljj.167.1610020424406;
        Thu, 07 Jan 2021 03:53:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3614:: with SMTP id d20ls1135715lja.6.gmail; Thu, 07 Jan
 2021 03:53:43 -0800 (PST)
X-Received: by 2002:a2e:b525:: with SMTP id z5mr4249476ljm.344.1610020423656;
        Thu, 07 Jan 2021 03:53:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020423; cv=none;
        d=google.com; s=arc-20160816;
        b=am2KfqjdMXU156oLxWeeE7tMOELigaaT7rq8JXDuNFUSvjL3ZW9f+Z5/U9P8WNzmUF
         pbXcxkR260lQgOSbDcsTqLBpHadGUyFL6AApD+hkL4HbX+1c6kjAc0MaHKOK1okYt3FG
         hsZtUa/SMBT6+s1YweG1AP1ij07jRHV2O7STwA6TmjCKLQZE404yzSixZ1PRkzW2+X5P
         Xu1lWvAZ6GrjdPPIQeB2yNQnFm3UxpEg8amM/lhA6OJk9OOcp2KlTVN3E6/NwNGe/ONc
         WKb43lzyCGLPd/U8g3lUy6VMwjpuVIZk7UqtmLB71jp/u7REx9/euRjYwYQVvLHy7a0n
         dUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=Hhk9OJTluJ5KWBmdxz+W1q3+eakKWb3hNy44poTwuNA=;
        b=fHmtRtttX6m86avOjTr+ksAm+aaxm58n/hPDg0XFDiVn+Mg3oQtMxhd7Y/cl9tkD+E
         nHYz44fyzTcZ+3CCShAgnuiNPJJNb5Sf/4LCRSZg8G7nWJayUB8TfvTqC8hq/OO1bfd0
         bDQZSnZTFqIt0hxBkfUbEQim60a/Es9ptoaD18k3OxxkADAcxdFe3rw0guX03iEbM5Ss
         pvH6WoixjaqMmKDEoAbPsdT5PgGTPH/cLHFrma1hXVEba1fZPRQIgw42bw40cI6zgCH0
         w+90884UKE2l0wBBK3cvy5vLplQpkeaH3LUJxFeNuWEPjhRkfbneT+CvVIvM30HJ7UHE
         wZSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=fNwtMedX;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id q22si138372ljh.3.2021.01.07.03.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:53:43 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Thu, 07 Jan 2021 11:53:39 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 1/7] MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
Message-ID: <20210107115329.281266-1-alobakin@pm.me>
In-Reply-To: <20210107115120.281008-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=fNwtMedX;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

MIPS uses its own declaration of rwdata, and thus it should be kept
in sync with the asm-generic one. Currently PAGE_ALIGNED_DATA() is
missing from the linker script, which emits the following ld
warnings:

mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/kernel/vdso.o' being placed
in section `.data..page_aligned'
mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/vdso/vdso-image.o' being placed
in section `.data..page_aligned'

Add the necessary declaration, so the mentioned structures will be
placed in vmlinux as intended:

ffffffff80630580 D __end_once
ffffffff80630580 D __start___dyndbg
ffffffff80630580 D __start_once
ffffffff80630580 D __stop___dyndbg
ffffffff80634000 d mips_vdso_data
ffffffff80638000 d vdso_data
ffffffff80638580 D _gp
ffffffff8063c000 T __init_begin
ffffffff8063c000 D _edata
ffffffff8063c000 T _sinittext

->

ffffffff805a4000 D __end_init_task
ffffffff805a4000 D __nosave_begin
ffffffff805a4000 D __nosave_end
ffffffff805a4000 d mips_vdso_data
ffffffff805a8000 d vdso_data
ffffffff805ac000 D mmlist_lock
ffffffff805ac080 D tasklist_lock

Fixes: ebb5e78cc634 ("MIPS: Initial implementation of a VDSO")
Cc: stable@vger.kernel.org # 4.4+
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 5e97e9d02f98..83e27a181206 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -90,6 +90,7 @@ SECTIONS
 
 		INIT_TASK_DATA(THREAD_SIZE)
 		NOSAVE_DATA
+		PAGE_ALIGNED_DATA(PAGE_SIZE)
 		CACHELINE_ALIGNED_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		READ_MOSTLY_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		DATA_DATA
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-1-alobakin%40pm.me.
