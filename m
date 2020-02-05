Return-Path: <clang-built-linux+bncBCS7XUWOUULBB4VC5DYQKGQE33PHJQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9FD15244C
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 01:50:59 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id o5sf148841ilg.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 16:50:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580863858; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDpCb79UN6Rd8i9PcgmlLQk1XO/iIOsRh5Dx0E05XIgU2Dd2kUJ4TJ0+vmKr7/hsdQ
         l9C8l5fpK4FqibtVydxOLgl6Ub00K7pSQLrRgFb+ZU4Alqy3SwRHZVy1jVdzzrwphVCg
         tNI2s+qNy710BfiaUEe5N/WUHBXa1lYAoVJMFX77uvZunYJubSH1karWLpIv70I3qNkB
         wxKInwmSlq/mlOCl0noZzjE1JMzbZnJ0oSEQYCUvX9NiBgwar4x4cX1JskzrBXLsGtru
         pc8+GfZfHeIfjI6wpZTpCrdF3R2ehO/xSYmi/JgLThuOHOPhsXSyyO7dQMEHkajBReRF
         JRmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Bv8JrlmWc/jHWimSnTjy8QFVC6d7WmF43Y0VCj7QK8s=;
        b=XKLxY1+XKrpUGzWMdiifRdCWMmtsZskgMjeuZk62orCu0d1ug5a5lB1OsgEsHbomdB
         v1p00oXaJBmVOhuZVfxbZPHlQX7VrzVOJq3atUqkta1f21euNUfyPRdb8LexPXkH9WlU
         h9xwAN6Ruw+awLnNueOuUm1VYdhxDxzSIDGAh9DKlzEPCTKnsR/UKG2jdL7eQ/4UtfyS
         DBSMxqYZaUFhQJEZ7tQXUvVBGPiU6hPEKau5xpAkIryrJK1CXcfP+TIiMmjp0TkTLNks
         MYm0Hl8Xam5KF9KRDqcmUjHoqEIA8otn5X8pgdKjs+QlzNiwT4/CXJJNQcx/EsNbfg23
         f5ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JUhe3AKH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv8JrlmWc/jHWimSnTjy8QFVC6d7WmF43Y0VCj7QK8s=;
        b=Bn8UiMO77xlESHkQm0cYCya+/o1r2VCARxfFv/vP/UWbLMHGTI7nY05pAiwamicznT
         EVhyd1Ye8MDol1t2sWbJzfN9xeJrJjbAWZYZ+wCiO7NFTNfVs0XXDwxfAojFvn80bi39
         +57YCJgbsSpV1KLM9tQy4A9O/OK5KXjgPOKY5Cdu6AzSzQs2hLmWPYD4NSOcDWQJu6zk
         gYKGDdlXXN+rFZ0y9Lbsm+aDFClWs9YJAKeLjEewGfzxLepbEmJ96OdFU2Ojlu7W1QNQ
         /Z6yEC/a/gZd1maAOnkxXmejj1BY/+N7URppor7V+vnzUumCY8SEWRHMoqwx8uwecROS
         rYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv8JrlmWc/jHWimSnTjy8QFVC6d7WmF43Y0VCj7QK8s=;
        b=FSCRBx8I2OIJ9bxtu0zmlecdLWgFDAVfv3aDycZCSgJH1uHD+gvjrEpvd+pzR5g/EZ
         Bf6Qs8U/pEtKRfGNutU6EYYKme6wipWsdWVBfIceguJsE4HwJPGPHMIsPtVRzWvw9EUA
         H8qLowjCiX+r3z3NTS/JB4wMOmizoLL0R6X+t25FsDplzuf3BDrbRxFwvAkiubm0Sl7H
         TliOIHsOmD/fTq3vC5IKxkIeCfX1CcpBsJtekjUBWlXn2zfQ25aWPcZUoa5OO5BUFwCD
         Uub7FNyjKxbk3fyCyyPebwG4q4uY1LFEBgn0nwK6fvzYqcqpCAB9wYFcrMJipvOH4bah
         PGAw==
X-Gm-Message-State: APjAAAWyQM5ofd+psAoagpLjjUm0LAgR5EQtgd2NJ1718zmuGIzqvHJj
	28UfePcdx9j6c8xNxkOS+Pw=
X-Google-Smtp-Source: APXvYqzmxu7kYKaQosn3rhQ5USoRR++Y9FqIyjIzFiEQJgi6bLGppWcil5asc3H38SwBnpf2+h8sug==
X-Received: by 2002:a02:ca10:: with SMTP id i16mr27402928jak.10.1580863858348;
        Tue, 04 Feb 2020 16:50:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:69ca:: with SMTP id e193ls46691jac.9.gmail; Tue, 04 Feb
 2020 16:50:57 -0800 (PST)
X-Received: by 2002:aa7:8699:: with SMTP id d25mr33512140pfo.139.1580863857743;
        Tue, 04 Feb 2020 16:50:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580863857; cv=none;
        d=google.com; s=arc-20160816;
        b=o6eWhJ80226EPF+SEbWf0XhUySgHb6bqnhZmS7gHfjQRTfSWtsfccYTanwRWh+SDEG
         p0txWRV6HDmY1Fb8OSfPZGa176kcbKkUHcUfSQwKakWhLMbHXfjkk560M9o+EHy7xC/g
         hqUXdnvWYvFMNO06vQZvRleRfJUqQGcGHiGJI0C+Tu/afgqD9vuhI+BqW3VbsU+AQryI
         stTLxgnlDgGRbqemPe04GfIVslj6jxUYcI4k0GWMqobRyHgT8oPrxdrZzNlG5IfEZFX1
         Pl4pj6AFsnky9qGQ89LQH2uqRkuaI3E0dKHPyXZRiS/U98d+5e7ge067EjpwJToYz3ug
         mFzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=xx/Hr3yEcha35uFKz8KW9UBIGlBl9yxxGD/Ht51bCag=;
        b=icfMOehO20ItO4LrtET/jOTqwERVuUO7ONQ/Kd6Iz7trh7AdMLZ474UYW5Z9w5j4gX
         3/Pj/Z49tXTaMUFd+5XWiDwc3aWzJruvwKa/WC0YO5VlZ/Ao9O/yE+ZEzubYpGsh8pGa
         h0eD0Y7eLzlOSivdYbL5EC9CpWxhvOT7h7dXj9ZcrkQLY0eljR3MYzZispuHvTYnfYn4
         FDWHHG5wEFpImbGu3l9+0+1P1RB79LCRKUFlFqr8q2RgqFAYQlhEdErSnjCGivthcmNe
         jVedgVPIdeDPF6/Bvs0++r+i1ABiMJjmTifz+UuTIcjH5zF6DvGsN8QKU5QnmUCUOzPG
         NT9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JUhe3AKH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f3si178955pjw.0.2020.02.04.16.50.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 16:50:57 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id p11so117541plq.10
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 16:50:57 -0800 (PST)
X-Received: by 2002:a17:90a:cb11:: with SMTP id z17mr2406433pjt.122.1580863857220;
        Tue, 04 Feb 2020 16:50:57 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id f81sm24626828pfa.118.2020.02.04.16.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2020 16:50:56 -0800 (PST)
Date: Tue, 4 Feb 2020 16:50:54 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Christophe Leroy <christophe.leroy@c-s.fr>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>
Subject: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as
 STV_PROTECTED
Message-ID: <20200205005054.k72fuikf6rwrgfe4@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JUhe3AKH;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
preemptible symbol in a -shared link is not allowed.  GNU ld's powerpc
port is permissive and allows it [1], but lld will report an error after
https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commit/?id=ec0895f08f99515194e9fcfe1338becf6f759d38

Make the symbol protected so that it is non-preemptible but still
exported.

[1]: https://sourceware.org/bugzilla/show_bug.cgi?id=25500

Link: https://github.com/ClangBuiltLinux/linux/issues/851
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/powerpc/kernel/vdso32/datapage.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/vdso32/datapage.S b/arch/powerpc/kernel/vdso32/datapage.S
index 217bb630f8f9..2831a8676365 100644
--- a/arch/powerpc/kernel/vdso32/datapage.S
+++ b/arch/powerpc/kernel/vdso32/datapage.S
@@ -13,7 +13,8 @@
 #include <asm/vdso_datapage.h>
 
 	.text
-	.global	__kernel_datapage_offset;
+	.global	__kernel_datapage_offset
+	.protected	__kernel_datapage_offset
 __kernel_datapage_offset:
 	.long	0
 
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205005054.k72fuikf6rwrgfe4%40google.com.
