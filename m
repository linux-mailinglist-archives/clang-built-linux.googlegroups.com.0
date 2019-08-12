Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5V6Y7VAKGQEOSBZXLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 693C28A9C5
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:52 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q12sf7073487pfl.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646711; cv=pass;
        d=google.com; s=arc-20160816;
        b=xm/i50ccc2TIzbk7uHIlMVwT+uDiMQ5kktKShweUJ6ARUOy8rDr09lesOLkpDI0Q5V
         GHnvrPdhYdyIS8QZMW5aUCQK4HzZPpWsK7dFS3+D3ZVjnfxJ1LX4vGOnt+pFZYbk9R49
         Ti2Mc11TYmwVTK8TU3KsEu0CroS06eDYgH/gliWaO2O0HcmnFEfXJuoUxZAyUUJ6QBMH
         qIx8Oj8VDQ/jisbzyFCInuVRjA1yBDg1xAf8mk3lsEn0G7cGHIiUHfbhtC1ENcMVHXkR
         fQ08hKsJGmtEWXq5hcoQ607BBs4JAf+H5POUqzd3wl3edKnWbmGeOeeCBGOtIlJNINq9
         qAiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ebbwC/eCRrDxZZyL/JCUPffpyX8uqK12q9BNypIxXyY=;
        b=l4yxWFYf77pM+fC59+LBKFqc/twvpBQKM9mDiaB9n3iib/5vXXJA8tjhjSeKhNrOd2
         tEV1a66+d238lsBYpCrrPJ/XHfTHcgr4nk7zqojg6Oshlelz0R4uehpFoyIOmwwyFHnX
         +TJT2UCyj2ErmzFoaRo9LADjpqYO+9hoV31JTiAHfZfcOSBfRagtPCLdh7P5UczTE5Go
         r1NppsWfuoUFNq3OCRe0vpnbs84vIyCZjSeoYONa9qnaJohMilK7GQm7zB9CvWw94PMZ
         OPxd/MaWG0TehYc3K54q0EbnqgIBzA5nTjnBlSAqsxD53B/PA38FPUgIXSk0glJ2bU0u
         ryFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+mGdp7X;
       spf=pass (google.com: domain of 3dd9rxqwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dd9RXQwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebbwC/eCRrDxZZyL/JCUPffpyX8uqK12q9BNypIxXyY=;
        b=iw6+OorqM7EBkfgECsuCX6ierQmP14h/sPK/VyhHwE6b4sAON37eVzMqm9pzcZKI1r
         rNxmVDeaPnNQiQkJ6PSsd3Wnc5zlRfGANY3HCYjHMsDO+0l9aqD3lCj38GHZE+2TIn6N
         IGVUpyzrrbZAwxCEpnmE9IGoreIdHwRIe+C87pErmpYsHEovYROrS4QlNgHsu2hwF6RM
         KfRvOkD4X8rP8zHVVvh2liipCZCU0k46GGUh/nv6gEeAPnOFCgXvCxHPwTVtFmRYIqHD
         bKu1Kqg1KRATPbjH88n8Vo02oEFyo4uuVa8eCaCSi54LP0l//Vo4SnZoVwS545Qcl2hq
         hEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebbwC/eCRrDxZZyL/JCUPffpyX8uqK12q9BNypIxXyY=;
        b=K1U4oGRu+P3Eosrsl+6K/Cx9wXZEhWfLPLkve8tSI5hvCwDTOtvix+tIy+yD/vdc/M
         bz3VL+BcTAGuOglCiwjyIq9VXSkRuGGOqmu/asa6XqIO6JYd+BCND7gYRjyxNq8E+v05
         8ytmLRms22vJSN/PJC5YEkq59GtRMwv2exWuGOTVCfIWx4MVw+gDQO0md2u2PVbfDhpy
         co+PlQ1JRMtUE8wThMx6sEKmGEsAmhCXf2eICV/VVZwGhpkVxMbiZH6hHJ8+VHZNJZfe
         afz6X62FLmTl6uVroDhcqRodIrMFbj/kIDIWvvfHFgSGkrwUBJ7BSBdUOQpgMK9eGdTq
         kCRA==
X-Gm-Message-State: APjAAAXhYT5nDUaLM5byJqIowitsp4/hAlTsBecCubGElY59JvAdX/c/
	0N08HttmPTkJeFr6i/lmfS0=
X-Google-Smtp-Source: APXvYqyxLYY0PgarRcoRI0vQXVTX7/BwRr/tgyFOd+Y1ghvNes7s7667VzltjrdMU+llaxjCorK4Fg==
X-Received: by 2002:a17:902:2888:: with SMTP id f8mr3976040plb.26.1565646711040;
        Mon, 12 Aug 2019 14:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34e:: with SMTP id 75ls21634046pgd.11.gmail; Mon, 12 Aug
 2019 14:51:50 -0700 (PDT)
X-Received: by 2002:a63:c246:: with SMTP id l6mr32211996pgg.210.1565646710629;
        Mon, 12 Aug 2019 14:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646710; cv=none;
        d=google.com; s=arc-20160816;
        b=wGa8vSEYwhp4xlxUpYw9W9+dA0qETs+/6+KSw0c3NQVosu8jZWZRGHw91CsDtDF8L+
         IEVGws5lBe34dGngtqTLAzBeaARkHrY3rE91cZ7rh7unFDe6XKU9fkToHApsTG1VidPK
         xjokCLfE1czFEbsoj/NRWoYcCrOKzflGCg4/Hv2N0i8uavQqmAXmZRyelWiEql0iEGzg
         ZAGVSjj579loZxV+ZIv+3seAXl1lcT5c1i5GxfTkM6b7vlLcejPR7EVbuENh/4pjwqV+
         SHUsWhyt50CT6AHaiFd50U9sYERCIaqVXhJQZy+Nz1BF+pec2Kr7/jkckPsNTT6yu9M6
         jmnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dkl7/UCGpL+NlP2/x1g4PAFoM8egHhu+Vinm7RBGZqk=;
        b=p/8TJKQTJfBuWSX5qG2dqfNGIeC7XqealZto2xw5WwehwgxjkSagFz2+ocKVrJ+cKf
         mZ4hBltMbjYJQyEQIdMGparLuIOSZa3F66tgoZyWNcTiFSZn7XSZcLzYOV6IDGsIPCxP
         ycbF/OzlHMUVNdz5bYAWVybuRoTl5mkAe3sOmgmuHi2TBjjo5cy0T/dbQSbmgb64zQyt
         uV7irpphCVQnZGAbmEreTGdg5yytaTvT/Al1knQwBVR56Pen23dJM0fCGiPk5NmmimWI
         +PyyptwCwKthRVeJpBX0wllhwNU6ByNpxrBPSyHomiM8XPc+z1fBUN0wzDZQSwG4KWKu
         hUhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+mGdp7X;
       spf=pass (google.com: domain of 3dd9rxqwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dd9RXQwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id cl17si4275373plb.3.2019.08.12.14.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dd9rxqwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y19so98032857qtm.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:50 -0700 (PDT)
X-Received: by 2002:a05:6214:1086:: with SMTP id o6mr17437802qvr.107.1565646709559;
 Mon, 12 Aug 2019 14:51:49 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:38 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 05/16] sh: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, linux-sh@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J+mGdp7X;       spf=pass
 (google.com: domain of 3dd9rxqwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dd9RXQwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/sh/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sh/include/asm/cache.h b/arch/sh/include/asm/cache.h
index 2408ac4873aa..07ddf31124a3 100644
--- a/arch/sh/include/asm/cache.h
+++ b/arch/sh/include/asm/cache.h
@@ -15,7 +15,7 @@
 
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #ifndef __ASSEMBLY__
 struct cache_info {
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-5-ndesaulniers%40google.com.
