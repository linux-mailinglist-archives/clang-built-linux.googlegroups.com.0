Return-Path: <clang-built-linux+bncBAABB4773P7QKGQEXPIHEDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7B82ECFDC
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 13:34:59 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id c2sf1666300wme.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 04:34:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610022899; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjypZqElsrmcb8BNNd2RMCcjbL3hmGhQPjX0TGAMGQlR2FUGD+eTxGZm0O+bvZ114s
         2H9jHJFQAbMGTH/VIr88NcrrFykRmKdmMWUvzvqcbTw5lE0jFSBHUnshyg1FdcQTTLVD
         XvqV4COvQfP5P/6PVifNOOvoxWv5vVRSZV6d01+SAl0U34kra0VxYGxxSr+wAQu+Zqv/
         0Jm5ge7LVjNBzdlavFtEZ4dSf/vXDROJB56RuSQZ/XBdeSfKdcPSArdCWIcUjRyzcSxP
         oXRnHHesg8ZHeUunKTua7ipDce13hOS2xq4bqUbPLzcmbnmFRax789tEVeKjD4UZfVtQ
         Gatw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=bbFjahq8zVwabgmFMvH0hWbJ69oWZiNqoHXGDODwkPQ=;
        b=RakDB3ajzxCJXvVCG6yiRg/wodwsqMOzFUbCIW7fSvqLQBpcdqk+gz6xjddmYsqC1t
         g+GjMvCdwJS4QlWuadjXeVNhDPSvdS2tXHD21ye4gaGFc4Ai0HIRBEujH9ncGCRf0QZj
         sKXEo2Ihff/FsH3debLQKqyhOMiQUhKb9cL7kt4dPaWc2PJOmFV1Q571x8UnkFDC4A8V
         cGEqPxgQHd8ALnNMcDPjpDf2a4E+xkq2HQ4w0RGZaeMqwr478dn2JLgbyMHKGIWIbIDu
         V4N/AeJBw1FTPGJ0ydTyP3XecwSfWKd+5QwikDFeqcsePv/Gl/mYedn0KversoGQ/Kkj
         4bmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=SvZOZeHR;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bbFjahq8zVwabgmFMvH0hWbJ69oWZiNqoHXGDODwkPQ=;
        b=WJRCKv1/vLeHw0b5/3ACvYRjjxQHPY5VSASS0EV6AG8ntOIJuwJ4pqZ2Rq2ZsiqUnV
         04u5pMWwaN357LZyl2pcyAUuvHmfUMKX6nCyE680p0gCrWT2tefm7I4B4EmjZ8fgyWUy
         3eWGuEfKAuNBYiv4V0nRhbyZP9QyIbKAATmRNlDJgFdr5sTm6wkNhf8/2tn5s+w2tDtj
         /0dRQvS4dvoTkIQRVK76FuJBhpZf0xEsj4GQD0goEqX78RWvllDxwmWNk3eMA5MAqTHp
         szA3n1lqnba7bBYzhKNhiO2zChU3hKFAeKjNwPjIL0zc/nqQYdnRqwGxL+fHx3hPcewS
         oxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bbFjahq8zVwabgmFMvH0hWbJ69oWZiNqoHXGDODwkPQ=;
        b=ronW6QqB3Rzr6/ZmkLBrtgH6bj3CLeFmOWRbrL1J2BP6jDzXF3qkEdMytgI+K+R6M4
         3qO+43SPxzxvFkqHxOe/A/RyWiD5x9DCFm3QPcXa42UDTwv7x+F79qgtENaUP/xG8gq1
         nfMQSY7CZiTpDqHZBWcj4UvRQ/BLohdrexmZ/8hoq/OEyEk2AjMKYhIEmPyw49QDtEAQ
         Lw8uF1XDyLZvbZ+8QWU8T+3TWAnBIapaVxqV8cLUrAuntS1inVKYQkSn0z5N3aQ6sgjs
         yCWphNNavgebPKo+gnqWiip+SmJ6ym947z2xJwj1OG/Ln/nmCOHKflaWUxK03giJEoAF
         f3HQ==
X-Gm-Message-State: AOAM532lroLO/G9dxJxO9C44JxMxwVP0nf27mEGG7GKYwrmDzJdP0Wd7
	c0jKa2RSSbSYvD2erEZYfVs=
X-Google-Smtp-Source: ABdhPJxQFRrcvyJH6Gi2yXjHe0JbfuSnxIumWdJyMfe0m/St51ajlY94PI0GQlGpuzUeNbxuT04x9w==
X-Received: by 2002:adf:ef06:: with SMTP id e6mr8685264wro.231.1610022899239;
        Thu, 07 Jan 2021 04:34:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls7187528wrw.0.gmail; Thu, 07 Jan
 2021 04:34:58 -0800 (PST)
X-Received: by 2002:adf:9567:: with SMTP id 94mr8890040wrs.394.1610022898662;
        Thu, 07 Jan 2021 04:34:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610022898; cv=none;
        d=google.com; s=arc-20160816;
        b=x+raTe7aSBqDf4nPUmC37mHJa4Zz8pBLbp7rPitf3HW+BI/JSGot6l6NU7FydYgVlk
         gAKrXsBxGxdbT4rAi9wHIpWxB1K6uQCEMJ9QqdifNg0S+X1Mh5FgdC6w4NCtSgQpbdpD
         AEJLEvdmbYvQNYfFZkQYCs6mg/lKpR7uuT76bPFFG22W8FDVFkscElp6P7j1+7Oe0Iqk
         StT7fjE56e1OCZWR5o0ifwHZtY/KtvhIo0iqwfawQoXSgucAd7DSgQ+H+hYJou7Vpjch
         SNoi4xRgREQkLokNlLyBdlXqzKHh+KtbNV+2XzL59aRRMcblk3QY+Cr5f5BIWbNYU/vB
         T8lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=012vDHOxvqVPo52Yrh8ZCe0PscXXJoRaQmC+Qol94bs=;
        b=u+823lt2e2nQGbhgS423YyGM+ErrZUJXHEPDVPCK7aya5lxDqT+rHfHVudE5bKjhRz
         vAs6fL4ncI8WADO1/FvFVxayObxKgpM+WlCVFEXmiCmPjTk303NeJ8/bKE0ybVi1qrLt
         6FLlcWzxj2eUfkG5p2Jsw4Em31wvXEfoSMxp+3JI5DFSlmyU/A5L4TxYBxe/4+KO2CtA
         zlV7lzh3aot7T2nI3ljo7MuOHNOXtFZKNJON+3yLIrUt2lnA/W7l71ihYxmeisS0h1TM
         Yn/g5sVVtiQxpNO4rdatGdqlM28nOxwkGO6K+EmNptFiXw+qTr8jYdSZ6ch0XBTPKHfX
         ivdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=SvZOZeHR;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail1.protonmail.ch (mail1.protonmail.ch. [185.70.40.18])
        by gmr-mx.google.com with ESMTPS id x12si375978wmk.1.2021.01.07.04.34.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 04:34:58 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) client-ip=185.70.40.18;
Date: Thu, 07 Jan 2021 12:34:53 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 2/7] MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
Message-ID: <20210107123428.354231-2-alobakin@pm.me>
In-Reply-To: <20210107123428.354231-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me> <20210107123428.354231-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=SvZOZeHR;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted
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

Discard GNU attributes (MIPS FP type, GNU Hash etc.) at link time
as kernel doesn't use it at all.
Solves a dozen of the following ld warnings (one per every file):

mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `arch/mips/kernel/head.o' being placed in section
`.gnu.attributes'
mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `init/main.o' being placed in section `.gnu.attributes'

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 83e27a181206..16468957cba2 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -221,6 +221,7 @@ SECTIONS
 		/* ABI crap starts here */
 		*(.MIPS.abiflags)
 		*(.MIPS.options)
+		*(.gnu.attributes)
 		*(.options)
 		*(.pdr)
 		*(.reginfo)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107123428.354231-2-alobakin%40pm.me.
