Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO5KS3VQKGQECU6PXQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0F09F440
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:28 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id j132sf310507ywa.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938427; cv=pass;
        d=google.com; s=arc-20160816;
        b=dNEEymIJ2BxxeiM90JiYgfmB9Tw0VJz08Kfrsj6vJ0Bs3xTPTbVfkkzJLzNu1VEH0T
         jFQnokdeQlB3KzkT62IZ6DlaOVzxp8lJfF3GsvdMDTXc60ffbTDrI1pcoOaSq6aOOSit
         wpHGRKefrKtKe9mW2tM5Z5j4xe4mILQB7H9UAqbvy+tx/TE/D4gAOA8NqWEPeM4rdW21
         A8MjcBZBXeoPQ66Q2oKGQLhWk1g2AcrrPLgEgOt5Q21JvO4VwDAc+xwCxwMDgz9G1mBr
         UyeDBgj8Cc6W6n2uT5KCAtT1Q/PvBulEvXsqE6JBHkeRFHUW40uYrvllxA9uZMSkgibx
         CszA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XHnZhtDFIzwtBuSg9P/gbY4LWqFCuojhhW5O633NzlE=;
        b=T8ST6qLkbuD5vj6Qr0znKy99e+2QtTE89SnalMzVniZOqexb0zr9g55SGkm4647bK2
         1SzdCMDYlCmgnCvDtdfWU8y8VSaughJzBIdRuUE90T0KPtHI5pNX6kJoSeufjF2c9O0I
         d8P2CWkfVGmkMWi7GvW5MgbrN2YVF1cqYcdxLtTOqDqA2lUUVEX1ceU1ME1XMVXcKySv
         HmKL2ZxEm7PCWRaSlvY8dTEHD1XlMLKy1GLYz02vMKzODUNuQnRInBtKK4GG3BD4dXPo
         K4iWNe5JAaTQAyPUmtB8hMH2pWAarGXRs8Q5xqcmLwm5oQ7Fx0FGNZNcMU5R9rRaXiXt
         6TDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thwZre+v;
       spf=pass (google.com: domain of 3opvlxqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3OpVlXQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHnZhtDFIzwtBuSg9P/gbY4LWqFCuojhhW5O633NzlE=;
        b=rsQ07izOZEdVA5v5mMbmrjCQY0u29Nl4az1u7J1p1pzx028cMrFMcggzAbEfnj9joB
         sb51HjqAb1mmRPdKSm0Q6F1M1wmyfyyZRvanb9XsAu/tc0SVrvTjyyD/ZCw9bPK1XgpJ
         ey2WW3saD6vdxLBi0W947CT8hExvdjmnA00eAY8fHwT8MrZwfTfW89Du6XaDvg2Y5obk
         pjQJwTEAGxVegJhB8RibdU3w7aktixY0i4ve0R6nnb8f+e6WWOjc1Eark7geiRKQggXi
         eWGE6eZ+RmnHlJ0vktjSPsFm8HVhsMw+X8sIEGXM6gB9kVaYHs/Y5GEHkOHjDPnK+bO1
         Q/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHnZhtDFIzwtBuSg9P/gbY4LWqFCuojhhW5O633NzlE=;
        b=Prx/oo1ZtCcNwKH3HkhqhPOc42cnqBx4h89sLN8D73HYW877PWa68yWpPoDwBjNgG3
         ryCCeVM2491ipNpjB6pJhoGVT4QBLlXThzuJHLbDaHEwXjlndsUzKhyWCwRUyZ1Od59A
         pcr1+4SC42d5/cXsDSzBlg5P3kgZ9a1Eji4+SZoUYGPlRY+zqNYUNWXMW757n2INGVf9
         1nAETgUCMsu5OP2QrOlMzTmycDdhSw6N0x8HLtT0xRoHvkAkhskKfI4HWgwFiDJMtza3
         s5UhHBfPf3ZLsCTc0/lN35YB+tCvBolzFf4jBiurpP20M3fi6CalXdWzALqVEdMLhgRW
         5Tug==
X-Gm-Message-State: APjAAAU8oBzqvLd+T2OsCSaYlBWVZUZ7nW1zVbuARL7radAENUnQDrMy
	y3fvCJ4o5nRlQIFHmBzA2xE=
X-Google-Smtp-Source: APXvYqzliymcuDucbOO84eisKHttSW6snPQibpU1/kS+UiV52BqNT34pn0tAsFWxV+mutiKeNL0fjw==
X-Received: by 2002:a25:ef4b:: with SMTP id w11mr547373ybm.182.1566938427611;
        Tue, 27 Aug 2019 13:40:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7105:: with SMTP id m5ls72295ybc.8.gmail; Tue, 27 Aug
 2019 13:40:27 -0700 (PDT)
X-Received: by 2002:a25:587:: with SMTP id 129mr540662ybf.121.1566938427362;
        Tue, 27 Aug 2019 13:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938427; cv=none;
        d=google.com; s=arc-20160816;
        b=bf1rqoqLx9fz5YsAxdFj1B7B/OeD0dzoCgvCSUWeCz37f2KaC7wOFYQqZeh/G8d6zn
         Ga16miTfQBSaE7GMVKgzpHM40fS3ymU+j4c7pZo5KiGnJ6nnNq2uSaylcFMKu2B+rw/l
         TKIBLctYRXWvth2YRTUxH2ACFgU+DZgT1ewYeSLNysBpXsR6p0CwsfBzTwSDxcIf0eNt
         G6yd2hjqka13BNW0ZGzLMQrDifFNFuJwllhIpvGH/dC5qkvqpff9+Q2rPMQ0zvjs/NeL
         53qVmsVwDqYNfoghgv5Wadp3yWDhpauXBwdA1EecQR24fGWig5kSYLAKKmP1QXZrHaW5
         p8Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=J7Ohnds+A9ovXQdZzadUakafh+P4fUUaEWG9NoT89Rg=;
        b=QdgzwKpl5ct/+WzT04JWmlsrCO2Wgf35B+X2nJquf9kVql/Orgd7BTDysH9zEKW3Bk
         utplbw4iLL/R/ZmCGjqBZliZ506bxCT2KdRV+YBtyQtXMG36X9G7NFE21Inws/pxxyl+
         zJI42UKwmeqE6InQn9iinIvoD7cfApjjW3Yl7y9V+uxpGKeQ76hMKyR96CMpIIw7gMvx
         VtqBfW+vdMAN5EL9exA3QuIzr6VnQwAbM7XKqJ3PGgn4NmbBDhP/nweDGIxIeO4lbZZC
         73Gr+bhqgqqniYqqenvg0pWciSUpnHX+wHgXXlJYn2nG30JH4mhLzZ3SkQMKpgHlT90f
         xqdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thwZre+v;
       spf=pass (google.com: domain of 3opvlxqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3OpVlXQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id r6si23109ybb.1.2019.08.27.13.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3opvlxqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id w12so136969vsl.17
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:27 -0700 (PDT)
X-Received: by 2002:a1f:fc0a:: with SMTP id a10mr437887vki.21.1566938426805;
 Tue, 27 Aug 2019 13:40:26 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:54 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 01/14] s390/boot: perfer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thwZre+v;       spf=pass
 (google.com: domain of 3opvlxqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3OpVlXQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/s390/boot/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/boot/startup.c b/arch/s390/boot/startup.c
index 7b0d05414618..26493c4ff04b 100644
--- a/arch/s390/boot/startup.c
+++ b/arch/s390/boot/startup.c
@@ -46,7 +46,7 @@ struct diag_ops __bootdata_preserved(diag_dma_ops) = {
 	.diag0c = _diag0c_dma,
 	.diag308_reset = _diag308_reset_dma
 };
-static struct diag210 _diag210_tmp_dma __section(".dma.data");
+static struct diag210 _diag210_tmp_dma __section(.dma.data);
 struct diag210 *__bootdata_preserved(__diag210_tmp_dma) = &_diag210_tmp_dma;
 void _swsusp_reset_dma(void);
 unsigned long __bootdata_preserved(__swsusp_reset_dma) = __pa(_swsusp_reset_dma);
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-2-ndesaulniers%40google.com.
