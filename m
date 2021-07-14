Return-Path: <clang-built-linux+bncBDB2BCVHRUBBBUG3XCDQMGQE565JFAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3A83C7A85
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 02:20:34 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id e13-20020a056102034db02902995cc3024fsf1055202vsa.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 17:20:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626222033; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/TF0TFFFqcEE/al0Nku1uMfXGMPrXKmYk5cvOrM7lAlmDrWvYHzPXOh9NqJDM6pdC
         FT/JAPLK1E9FSxzRA3xNGlS/jGUmFIM2Xk0JzFt/+vAUXmH7g18YtGXpvw0Q3ZRUNCeR
         NpmmbUHnuTZPg8KNM+hpEXlvfhMk/Fuw7/Wg9kN9YKiUR9ZVAwMQaGRm2rwtBy85ZsP9
         5wjsxDJKBsVIXrRswDrXXrewnb3x/1bJb5+pDC+2JgGmIeA+kXHLQ6k8/GxlSTzTObnO
         o7rxwCb0MTQVrIwA8tFV9ON3RGcR26E0tX4vMCi+kYqPG4OTY8gel6okQnH5e3n9X1Wg
         1c5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=AHOjCcgvApIKLX0XEtQM52gUMRu2dVGNHR964juUQsE=;
        b=qEihhKBvLFPtscnQigw5v7djqvDESIj0ygWrxBQpMRClxTrpFv/vtmKOm+uNcJmj7j
         5cw1htz1fdQkx1+ZhaDZZGJPtZJXGhjKyFQeUrbFtaJ+gEPDAKzngkM4Ll3YVq5/Cynu
         2quPTmTZ31icUR2VMGRRizVTO2zGxYtpa1v8DMdigziTUChbHNRSCZ/cuHtgX9jN/Sfq
         lDgOrzcrBxlSPL1v0VSo8XlYeF6UaB4cfgaooXBgg2iR1MtcOlRjthYFmc5kPXGiG0Hi
         eVpkTitwSVAAJ9hKHXSRx0BqHqroSkkPuvtQv+ugBGXUH0g/SnGM67uL1MxbfiSArjk6
         UGzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQ6Nye1c;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHOjCcgvApIKLX0XEtQM52gUMRu2dVGNHR964juUQsE=;
        b=ZkQjMroxUd01PceOPo+a7jIiaQlyMparr93Sb+K92+GhTlgSpLaiKof09Rb8ekYh8f
         aBoufFofGm0PQO6FfdbZlLwT1tvZYafqy6WTIV9Z+Qde24iqURFCltx/R9wj7uz0wlax
         9qDXAg6AU8yyDTO6IMIArkNs2k79Y3iqMVxb3lurhW9H22nrHysAq3DwPjFS9lJlNQSj
         7LxpEqA67KuHoJSruI46AK+kjakJB0Vd5bHBNtkVMcB40REFcRfTDgADNvIOCMBSvdHG
         EvanC2853PPjxYT1/U7HvRA6Z00gta8zh3fPynSHu71qGL5UHW/NFLT1tntuyvpBGNP/
         mwcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHOjCcgvApIKLX0XEtQM52gUMRu2dVGNHR964juUQsE=;
        b=GfN3UyFcsQKjy0gp/g0NcliFCMDKlU/TI5i8pps189NyJwimcCdHJESkQ5bq7YkPHw
         Y9BrSnRdzRtiIaNpS2kPYlD5vcCrqjXKWp4T1ZjKV50A5suAJg4L0is3j/8iEwOUHRuj
         /4hYgwzLa8jIk5pW+6mFFgP9kI7hRPC1pqOmCqMSuaoxELmu3YRefLNZ1N6IeyvGF8EP
         fodOJV6B1BB9zdy9NSeGuGp5dkufyhwTDG8ELlnNfoQdXaRQwuyn6Tnrn5s2GhdZNr2P
         Zs+sTDF9VQDeZQ2eU4jLxL52AZUBSJxLJSc6lrgYBf5ZXWAAmsJZY+XtH/yXZ9TJYKHk
         Y1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHOjCcgvApIKLX0XEtQM52gUMRu2dVGNHR964juUQsE=;
        b=qWtV7JqIJ3DQEVJwHUT4pX7g9v+zxbz/us4GXw+m2jpoZZVXOhGh/KN5LDhf1mqfDL
         9fy+PNK7lUc9JS8UmeEq+wm429ERRECvtC3RQPe21CSq4tQKP9gH/XUD7eyXtDXszrqE
         RsURKhh2bExacImRMQXTouee+qS5W008xnem+YJEHzHMmxuKoOvV82zEXvrMhUixlElz
         WqT0FHuugz9mYJLKqL5FKGKBf63kSQC/9T4wmcqj05VgB6C99LE0K5aG+fibPxXX5VN5
         GySABzzVFAhD4n8DzKA65v8AgKITQ5GcnmDKTZJuUa/3dmJDoICiSDU8tJQZSahT9tzg
         /xvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530T6C7e8BcqFE2Dh+mjQNoi7N8wbUr03zvEsLu9lrkEjCFXJ4Gv
	+jcdOskqADxJIi4G9GkGbNE=
X-Google-Smtp-Source: ABdhPJwFtf9QIIMB8CBqG+3iKGVaZlE99gUKVt30MstiWJiCMSnmA3W0dFi6/rSFJARqU41YfW1d1A==
X-Received: by 2002:a67:ebd9:: with SMTP id y25mr9618779vso.55.1626222033443;
        Tue, 13 Jul 2021 17:20:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6996:: with SMTP id e144ls177332vsc.6.gmail; Tue, 13 Jul
 2021 17:20:32 -0700 (PDT)
X-Received: by 2002:a05:6102:2369:: with SMTP id o9mr8410529vsa.18.1626222032485;
        Tue, 13 Jul 2021 17:20:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626222032; cv=none;
        d=google.com; s=arc-20160816;
        b=D7td3n2YPs3TGL4kF/iyqY75LJZwDNcSU05aSnrE7re/qdbHxxAg4ZXTnybgVDYNqM
         dKx6Fe5gOnxHiBhUiX0djfgTgAbUgaYoJu3xY5tNBctLUiWF0G2XvYycWyd0F1Z969bc
         D6Y2trKaiYpYzQZ21zhkm5mhJNzcA/L85WHNEDdAIeYgMbmdG8XA9R8Rck/4yNZDPeOl
         DH3tYT+FGoWr5ziGHEKF8xJfWNfzoGtO+1zFylt+WBTF/X/Z8er0tp1B98yBI8X7xd5h
         RTm8TJaEnC8BFpBQ8sArUxdcAMs+6nympJLsvYq4jNsSuAskmr3Snc9Hd3evwl5eJhbI
         fXAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:dkim-signature;
        bh=O3GExnVczfUOt4y6aHmFDd/ImVOXZspx323TdrIBemg=;
        b=MKtoZsbAy4VCeTccQQ1p00P1V86IyEKkfGnYtdDm2DNoAkYCOBj5Gw388LrFIO1We4
         bUNe8kboy75+V+U1hzsBnWW8xgWW94vQCjo2NfTFMSnm8lUShK63oEp2IJ4zes7YpG2t
         5cTzxszvK0nooerGqySkrdeHouiPBVPhK/gl7CkvdcXf1L1BxMRZVju7gBkcQxBwdRxP
         dCdXqzAwtsjNZG4W8iak9fh+G5Iw1Qh3bJmCBGO72IEr//Vn5obtR2SzpYoT+R1JqtpH
         On9Fijos1fm+Jhqt/recf2cfGJ+cIZb3y5XlWu/bbcd6VJ8nJZaXS7v2mUeOkVxeVpAd
         CXkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQ6Nye1c;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id t21si60436vkk.4.2021.07.13.17.20.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jul 2021 17:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id a7so5737424iln.6
        for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 17:20:32 -0700 (PDT)
X-Received: by 2002:a92:c504:: with SMTP id r4mr4654610ilg.131.1626222032028;
        Tue, 13 Jul 2021 17:20:32 -0700 (PDT)
Received: from localhost ([172.243.157.240])
        by smtp.gmail.com with ESMTPSA id r6sm314516ilh.35.2021.07.13.17.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 17:20:31 -0700 (PDT)
Date: Tue, 13 Jul 2021 17:20:23 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: "Roy, UjjaL" <royujjal@gmail.com>, 
 Song Liu <song@kernel.org>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <kafai@fb.com>, 
 Song Liu <songliubraving@fb.com>, 
 Yonghong Song <yhs@fb.com>, 
 John Fastabend <john.fastabend@gmail.com>, 
 KP Singh <kpsingh@kernel.org>, 
 "David S . Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Networking <netdev@vger.kernel.org>, 
 BPF <bpf@vger.kernel.org>, 
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 linux-riscv@lists.infradead.org, 
 clang-built-linux@googlegroups.com
Message-ID: <60ee2dc76ac1c_196e22088d@john-XPS-13-9370.notmuch>
In-Reply-To: <20210712173723.1597-1-royujjal@gmail.com>
References: <"Roy, UjjaL" <royujjal@gmail.com>>
 <20210712173723.1597-1-royujjal@gmail.com>
Subject: RE: [PATCH v2 bpf-nxt] Documentation/bpf: Add heading and example for
 extensions in filter.rst
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: john.fastabend@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qQ6Nye1c;       spf=pass
 (google.com: domain of john.fastabend@gmail.com designates
 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Roy, UjjaL wrote:
> [1] https://www.kernel.org/doc/html/latest/bpf/
> 
> Add new heading for extensions to make it more readable. Also, add one
> more example of filtering interface index for better understanding.
> 
> Signed-off-by: Roy, UjjaL <royujjal@gmail.com>
> Acked-by: Song Liu <songliubraving@fb.com>

Looks OK to me. I thought the original was readable without the header, but
if it helps someone seems easy enough to do.

Acked-by: John Fastabend <john.fastabend@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/60ee2dc76ac1c_196e22088d%40john-XPS-13-9370.notmuch.
