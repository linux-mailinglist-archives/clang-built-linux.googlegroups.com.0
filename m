Return-Path: <clang-built-linux+bncBAABBYPM3P7QKGQEKGE7O4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A4F2ECF24
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:54:09 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id n11sf2559755wro.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:54:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020449; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tohj+A/DT9F/R6usZ8d+Iyi1ODNbf2a3uDoPgTehGsBHGw5v7Rd6yvXoILjlupmaHx
         R1J6tjmc1aZ6p5vA5AvqqbE8U3Ug7HCLN+gwFaGSDTazQ6YS26NbqKGm6H8bnAN9is3z
         2EIgKuslKl2lX4cnyMHfDP6LUkGYjKDD5TG0W4nzrj0cPQGgCGUAUP70QUdHRT1ODfNb
         QdtGjMPmjJvP7+RgmBI9DhVVLQWUNew6/K9ZeVDmyDuHF7m8eP34f+asW8TMwzHT829+
         S6pWygPR+Poo5zOmV7N1BpM4lQfXDJaIWgL3JGKvZ03ELpmMG5d5FpuUl36MpkGRO0RN
         1A4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=hO/SG/2mtpUSPCRIhbTkd9ELbaJW8V979BhDcLbNNZ8=;
        b=Kmvb26BIjXFabkGKsWcZRYyAywzYZ2H3J6y3jYtrfmfFBwvwkQ+0kiHARLq0g8BRbw
         n7Odn3sMgrHtnk4wVN1YGR/9iWxZTbMbeRTmnhZsxtGrIvze9vNkRvpE8NqdJGkIa9J4
         5u6th19Hjt8WpzXa/oV1K2dRk/4W4hv19UJ4UMFqE1UgTosC48zOiLIxqkgumGI7nCVk
         Cer3ZV9HVg4oXEvyQRx7eNJEEQoQ7meh4cDV+9rsmpao78hJJqAbf8TZYMjDJwM4EsQj
         +BvF6xMhyD3QhN242PUfGpHkiOeqOjEt3VMZMQ5brP4YjHOdf8JlNUfrA3DW25qe4sKM
         ihPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=h9iDE6kY;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO/SG/2mtpUSPCRIhbTkd9ELbaJW8V979BhDcLbNNZ8=;
        b=UMF4W7Z7bla4sm8TFN7bCn8tcVuXjLE+4j3vXyBH6/LuzaRXKNsZvvbfse52LhV9J3
         wbiVF//+QVAhsctiXfZLZ19THrGEjsYdS7AeSOWLwX72zobyaP4ylBlN/IP9JTNJSeQb
         ez1il1z+SY430DSQ0NQ6Ji5jFQKjiPXq0TJSy5htZJ0rC9/9OHUC98/5giji+Ya3SIom
         dhJMONLx4dkEwxu6K/lGIX0uo6UgbmXTdQQKGl9nUq4BrQleO91eCMK8rVuRtljcDkaq
         rIozDrVxDotVz6b4WzXRlHQ7Mt2XkhOmajH7f7SJNRaziKSQiV2cWOM5yXmaUwfwkBQZ
         Ss0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO/SG/2mtpUSPCRIhbTkd9ELbaJW8V979BhDcLbNNZ8=;
        b=p+QyVodjiBgzISxVAwh1YpcrHqxiwHM/wfdjDg5/MYrri5PHiU3gc2Fo1fJH+W0ZoJ
         JLfbz/AqimXYzZmoqWNM5yCEVHNqy6kfBIQn+mI7vTutc6Ghkg+Y1ig2Uk1ORgLNhpXQ
         Qr04Pl4/y6xBMxac8lLm7n+45ohNMLo4FG22Kc/W/FRDWtxjVLS+5yJrf2UcNrpv8pZo
         BxyHAe8nM4FBd1vho2/rILfQGuepP4CuNhaJ9P13p2E7cpEe5puTttUsb+SnBEyfYUiU
         wHZz9Tyw5/5dECmxpZeSnz8+xkRJcifZKDx7UZMImgu4+cWSFfyvFPCJF5HQBHUYA7rZ
         XuQw==
X-Gm-Message-State: AOAM530yFHLf6JQYlL7cT4v61yvzZ17woHQ3NfMbOdKeIAzh1gYiomBM
	LO8auq9sW49OHywvsvIhqFo=
X-Google-Smtp-Source: ABdhPJxO/WvcvYXa2CPkJhaGIbDlWIxOMSGjpXl46xuPLZVU5LIN6UOUJ+VcT/itNzrCW6B59tlmuQ==
X-Received: by 2002:adf:e802:: with SMTP id o2mr8916357wrm.251.1610020449275;
        Thu, 07 Jan 2021 03:54:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls7018683wru.1.gmail; Thu, 07 Jan
 2021 03:54:08 -0800 (PST)
X-Received: by 2002:a5d:60c1:: with SMTP id x1mr8650412wrt.271.1610020448684;
        Thu, 07 Jan 2021 03:54:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020448; cv=none;
        d=google.com; s=arc-20160816;
        b=x963xxfq8KrhSOxYYq2UIO4dZglIFLyJRpg4xhhu5Uf2uFwpCz/I+HsUJLME9iy7q+
         o6Onq3MHX0ajT868Zw+VSwIr0hqKLgfqMfiQUuN1zAZpRTdF98daUDiAEUHSnH9HXKC9
         105/fkpxbHtGIlwsViqaeSD64e14Lqf9TkjrLTjZKbBHDrYPtvcaRuUVRTZkwSIQK2xZ
         0If4X0imAUSFmFeI8aICboPNXM/ej3Cz9TFqlSH57A0hoqCFKCg7Rei//AswD6UtXdi1
         2pqdu98xZYHPiv04dg6WO1xZt+QBRhBw03X7Z3nuflUQpVch+0pu/dTKB0IZnKwph9Zr
         67ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=1iHiRQzHqAO/hOdIJm7931oVSjvi8g99iSxotTA/NNE=;
        b=iHJWw2CYWoHFNqmj6E3iMOQsqXm8yXCxMu4ZZqHcWWvnrtoMaHLejEGYoVd3/XZpAU
         XM4D+XEBNHyMbLodjIA55Dm4SVwRoBn24PfbnhntE1C1fgmeZMqM7qldX5uNZzRsZOZd
         OeoJCNVLbwm1DS3UXr55pstDB6Ev6jExvV7iO1AEOADiVE4B6HPq+zBMogXtQstn0EJn
         cTMsD6o6Yq2cpPG3/nV3w7C8LWq4naQwAdoXjxuvnF7RDlsMoMJaf54O/3ByANTYQ0rE
         c2Zo7Bn5aXR11nvEgM8sVK8sGEKhex1UYWMf6iqxm/VtVKAtZrfqNozsL+htN9r4dQGz
         Fzag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=h9iDE6kY;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id z188si403510wmc.1.2021.01.07.03.54.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:54:08 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Thu, 07 Jan 2021 11:54:01 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 4/7] MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
Message-ID: <20210107115329.281266-4-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=h9iDE6kY;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
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

Catch any symbols placed in .rel.dyn and check for these sections
to be zero-sized at link time.
Eliminates following ld warning:

mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
from `init/main.o' being placed in section `.rel.dyn'

Adopted from x86/kernel/vmlinux.lds.S.

Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 0f4e46ea4458..0f736d60d43e 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -226,4 +226,15 @@ SECTIONS
 		*(.pdr)
 		*(.reginfo)
 	}
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+
+	.rel.dyn : {
+		*(.rel.*)
+		*(.rel_*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
 }
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-4-alobakin%40pm.me.
