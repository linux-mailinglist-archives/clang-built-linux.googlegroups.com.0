Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5KS3VQKGQERU3MVXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA579F445
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:45 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id u24sf185344plq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938443; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7cxfFkEgo6BhX7Tk09lrgbLgjh8GzKkEVz2jiS3ycqbKxzoDEqMqgamTniVFh1Qu9
         4HIRvbc+W/YnkCAddSjdbPdqhASRYW4KWkI2i4KGKRdl0QNUUkGFcb/qAuzW9tIUVJwo
         rPf1gK3uACUggtbjU7DOjJ1rcX+nu48/ewQY+Q2vgZe17s6Mvx7mcCeGY1vkAziH+o5g
         iZgTrEXxmK8WnhQ+2WZiXO1WkZK6zCI79+nlk8eb8K6n9yWxCsgQrkV7GLq2BFKyKu5Q
         wSZ3eNzyS/1jzdsgwcIg+2r2lb7R4cAvXZyZv5QFtbTvgvR4j0pmr7943GEkCMaxY8ef
         y+WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ouNmkkHRXffg8RRPl7UJimZpidJU7Ib50z4oYqx2lYs=;
        b=ZOZj/gkSWN4CNPliNy1MFtcdFrLXVW0P3TP0xpewKR9bh8mnVJq1JsidLk8tGkVUu/
         /YjKpGiZQh1ZgStS61zZK7OnH6MOm7eX0q0Yjt/FIN0ofl1r1yB1QU0z6+xizILXk2hl
         LbZhyf93az9uq2Q90YvSVbzHWysqQ56EQsMxx/W9+3vec7R2NKoXge/Cztir/mRXjb7l
         h445s8zDPP+06XmCehbjREnZeP3CBxdo3dKojuJ56IcXfQifmzav97z9I72Z3KiqeVXV
         nlDv4H4xbpOgWbdS/uWnhHnwoiebgEBcl40pqXo1WwzhIdjmIYZkUt3tzlqLFZZde5ks
         5H6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n0LdiSdO;
       spf=pass (google.com: domain of 3spvlxqwkapsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3SpVlXQwKAPsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ouNmkkHRXffg8RRPl7UJimZpidJU7Ib50z4oYqx2lYs=;
        b=fja+Hmmhk0+TGCknn0N/64eyOx6uxAaKYYwsBjOZO2fSbPxjeote8KVHHA5WFc5viw
         hDa0gg1qooN7U/Ua+Y3bi6UMIAM2fWSM3oKZqK5l2+KMlXASPZeSDa3yWWeZsBJFbavH
         SJMzGxxEf6YT6vZaMdAwmhg7DF90gpY5svtwk+DY3ongjZPYIVrxWXSoE6iP2AiPPsJC
         EHL6NGkQOx4zwBMMEB7sIwegsMUqFZNTYKSPV64W4xweTxsYDYPErdSDP1K5SUJLMPuW
         A+M21Ky9+g/h5PYzfpk2jbGut95H7rqiGjOfuz+oqxZUiUwChyegALq6v14dyngtLdvf
         xt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ouNmkkHRXffg8RRPl7UJimZpidJU7Ib50z4oYqx2lYs=;
        b=UBIBLK1qXTfE0s8bKiqBUKONTy/E74P9dHhu+CBhotSFQRdHlB1e/0F6jes+hkJyRZ
         oz/PX+kvgU9l3fweX2HiANXpMlElQhsXkS1D+T/65iiifH3mDuy9OPem8GpBdzkt+sww
         kav7C20EE/kwNYKBIRyRLrRHIz4G5RR/MA9FNZ7509aL+9e3w4nHVifyv5xrSSYgfMCd
         XkWO+GFGPapX45sTtdrJm0GM2UiXfvOBo4F24pPzpOV0jizxbTEF8FSCzZutEJzXFg6z
         KByg4grx6VYK5o5FfAvU2OM2yPdDqmx1sgotfYLatDdCIvh03uHtVt/uHmBNnJbA+kbx
         u2Tg==
X-Gm-Message-State: APjAAAVdZeJvyHbiIoTRpYXpaWrTIXe0l9dPdRrz0MtQ6QsRiz3B0BpZ
	PSrd7svySYiqP9q37rwqnJw=
X-Google-Smtp-Source: APXvYqwVMx7N52MP9CtMK1bWW9f6khqzsUJ6GwSx0dzOiQpDR0pxdlquA8PvvX2JuEf0QpbhOd7ayA==
X-Received: by 2002:a63:4823:: with SMTP id v35mr308447pga.138.1566938443721;
        Tue, 27 Aug 2019 13:40:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc15:: with SMTP id j21ls53672pgi.9.gmail; Tue, 27 Aug
 2019 13:40:43 -0700 (PDT)
X-Received: by 2002:a63:204b:: with SMTP id r11mr271566pgm.121.1566938443254;
        Tue, 27 Aug 2019 13:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938443; cv=none;
        d=google.com; s=arc-20160816;
        b=FMu5xpjr0SMuWfe8xfaHvEdRqMnh/ztoopTJjxxZ7X8nXayy4faLjKGW3TJ5NG59L2
         Xysj+HLq9iBZNBR+EnBFxDWvhHe2oNKg2W8QyNg1DkW/71+Bm80DCI6s6yh3a8Bh/qhd
         YLQKaqXF0eVvWOQ9cmHNQQFDQPUj++tLj0Ai+V6Hkz8Fxk/Ad0EYH7NKQEc6JpFBnd6v
         HB8Vg2r92g57KF2G4+f58v3MnUZuLpBY0iceABJEGEXnUCAbHmCgUJfM6UKQKN6c7+oE
         5He1G4XW3ztYz9lwNmfhgB7WZCQOCHuMV/NOYnakPgIBWxRzQy/wsvc7B965lok+qIou
         +rug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tH7yiZ4DL/IkimFAxsXUYbqZ+IlrPZSmhVaW+hn/z/8=;
        b=dwawdlzQKAZ4lDnqp8OMXm0g8TkoRVLgpq1isnycC2UquVfTfJ7Zq3CD5cQDjVi9TV
         eEJgz8YvdOl4pkQsBRqegzyeNSd6b13GOJZTqsVmqdmragdC5c0qzu9amwwpeqByqU95
         shX6sJh//ZzNq75iNO9oAsUYa4l6ctxiRqVRxxZwctjsmAoynsKyIBbEB2z39iQ6eoGM
         wz8/cbvDIyHdL4iwwCiTglBvShwW0VjNChLV7oli3IdHtdSFaRnvr9cTio1fZMHyAvWB
         LvIdJYvcNc46awahoA6Enfswvo+LKbf6UbwWmV/gTKGYVOGWS3n6wJLUSbN+g7rfxY3E
         3+SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n0LdiSdO;
       spf=pass (google.com: domain of 3spvlxqwkapsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3SpVlXQwKAPsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id m12si114216pjs.2.2019.08.27.13.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3spvlxqwkapsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id f19so183044qtq.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:43 -0700 (PDT)
X-Received: by 2002:a05:6214:10e1:: with SMTP id q1mr461176qvt.148.1566938442229;
 Tue, 27 Aug 2019 13:40:42 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:58 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 05/14] ia64: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n0LdiSdO;       spf=pass
 (google.com: domain of 3spvlxqwkapsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3SpVlXQwKAPsqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
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

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/ia64/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ia64/include/asm/cache.h b/arch/ia64/include/asm/cache.h
index 4eb6f742d14f..7decf91ca11a 100644
--- a/arch/ia64/include/asm/cache.h
+++ b/arch/ia64/include/asm/cache.h
@@ -25,6 +25,6 @@
 # define SMP_CACHE_BYTES	(1 << 3)
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_IA64_CACHE_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-6-ndesaulniers%40google.com.
