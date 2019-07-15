Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNXMWLUQKGQEPRUGYAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F2F699A5
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 19:21:59 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id p18sf14006369ywe.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 10:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563211318; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwH5gEPPEH9fGdeRPJZ5aPTSGrp9jKNIARrTE8sqjoTNkky+sBn526VcSwEuTkgiKl
         NIGQYWCa3JpoY02twrYsAhFdlTFa0/BIznD1lfSJVFLjdb6RnC0HeL/O/0iFwxry4saJ
         ivX/XWh4MYgNPGXQgxCg0kVg+rzzCvT9JRVHCjwczbB2I2poY+B+k7X/Y8OkfauU5I5y
         H3oivOpl2uhqZCZauH14PDx5Zyhew//KpeQFRCWfdS+cK0yDs9kivL68e6PbQuU7SEjf
         lQEgiSxgxZZ/wvt6XSjBjENpChsw+OmarAvdngZawDVcRDEM/TqyWYlLvmRPdsAhSOpw
         g5TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gLht/GXc38BbiMTtZ7ZJHZAj4A1WeygwfGvQYLi/tLM=;
        b=dtXpRhJM4YZ1XI3o4Ysqkdd/FuP+/dWLoFxxGbULqjyjgpp+o3wtF1nY+jdrZ7JdNs
         A4aHU2QbxHRk0MFBS31SLPZRcayI06DJou4aQ+3C7Mm/6LDAjdmmX0AymJJXUI3vd24n
         HvDwIot3D9fehrG9mms1NndHKHVuuDSkC2Qsd0XRYUaPTk5uAHWCcaUZYd6K6Dfa7Pfd
         G3Rtcypzb4P1BXcfyU73i+PeWP6sWkNXhz4SVy21sF0L4RQlDzmSnD6sCOtIvx0a0CuL
         kW3I1M1JIB4PY16wXsQ3U4giPTy4NpL5kcPB61NGmzAZOL31znIYIZSKOeNwsGbpuCrq
         jiCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NREql7ll;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLht/GXc38BbiMTtZ7ZJHZAj4A1WeygwfGvQYLi/tLM=;
        b=hppMp8F2ivj21lCyaLU5AU2+eI2IHNB9pyA19QyLNPG/mgG4hQRGb0qxBZEv9UnIFN
         eogYe9mZ0Kv5YecmodcaE4rdYmHqEMVZVaSqRj0ms7wIZCgf7LxPZVcJPQW5eb2HaIIt
         FGT6c/0cynJ/Y+DiNY8ijDkdcXLGpnPg/utiH71xiE9dtfaFznqVgD3F5934F5IgYuOi
         zgLHzkeMz6VlL5ZjsQP6v7jg3SRI9AAtCl9GWTkG5TgrOe71sg7z4io6rF/JeVP3aYfj
         WjQAvAeBF1XKvk+8t9QvNwoSB6/ZbYTiIiCPDOHo7Ieae0LHbe+Qnq5Iht+TG7ZDsMVT
         SUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLht/GXc38BbiMTtZ7ZJHZAj4A1WeygwfGvQYLi/tLM=;
        b=qDpBIE3QHc/eUgHo+btaww3yGPKO7XdlXnpEk/5YMpssC9MCDT/3H167Y4xyNqpKJn
         JYFYP94zDYriGrePsCoB8/pKxuaPNjhCfXmdOdhCdjdIv7lZaR9Dfp8QlZZDLKK069+5
         SKCk3Q38xfqYsFwhj6Ga1oXMuVUIUUS5Z2Hdph9ADhxkyp71QT+d6ySkWsRi0M+Ss+E3
         sHoS+7iIcU50U7dWBRS/G+Rcev8b1ssKCod5yMFlNn/yp/AacWTNWEsmSf87nfXN/508
         wDMhinG3+M+YhsTVU3AFhLa8apuAK6lEfhj193KGzs8Cc7HNCEm2dZNxjwFxxCJIOIkc
         DG3Q==
X-Gm-Message-State: APjAAAWcUVb5IL9Nst0c8dZ+Ok+FyGTAKA0xLS+sFoZ02BrarZyw92Ib
	WbnOetbGH/sbNeaWO7fUerc=
X-Google-Smtp-Source: APXvYqwdV1T9cUEOv777rrKnPQRKXspoYPk49e+V3xswSNp92XJzPDS3SSMjpPDMXLiK1R/MvzcFzA==
X-Received: by 2002:a25:7312:: with SMTP id o18mr12240646ybc.17.1563211318234;
        Mon, 15 Jul 2019 10:21:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bbce:: with SMTP id c14ls2371651ybk.2.gmail; Mon, 15 Jul
 2019 10:21:58 -0700 (PDT)
X-Received: by 2002:a25:f206:: with SMTP id i6mr17366434ybe.68.1563211317987;
        Mon, 15 Jul 2019 10:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563211317; cv=none;
        d=google.com; s=arc-20160816;
        b=e8n+u+KaJwrEmVAZXxX8OLgxWq/iF3m2TBvctkZLOWnlxqtufJxvvmc+zSiY65zqrO
         PAXparN4cYSG3j1ymIxZ5OIh5ZpXp5DER/w07DE5AU7kpZBwiXK1WAxYcRfiNKUlBsVK
         F65xmTRwV+8OP8NVdIMSY600DEk1mDdNT0R0JTWbukWBdak/Xhor5cLMv5HxHHa5k/QD
         frj+bwSIXpFWYtuOOdtIwQ1x2TlTPT8h/K249KepwDoarc3hE/KEtHstRFGNSzMDiSgl
         k2UfKBuF3tSUf5NMvQWZ+usu4Q9k9Y63DlBJMvpFpGLy6ZptxHJAbLQ3Vj8CWdPlqxHT
         HHWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fmlPLkUixXWrBKTX56y8iyjeuvfbjfTIyAWJ2Qg12Uw=;
        b=bVDT7u0yWF54Ieta5qiqX3rTLZaRNv9Q5ZaPdlaS/qF4w2DYQYB8M8YF1KUh2kdaNY
         ru1utmRrLzAn6lYK9iEAih5/9Tal5YoK3HW6nYUBXhm3LIhjt6Y0a6N5LlWGdqbVdC4f
         h7ra7+EtsuMZzFikVqMxueNYqbZyIh3csbXumEm1iA1eUIMmXlEG7U9xYtsFC2dmHgHn
         txukdyTw1pBixhnBFXpBYWDZedpFCl/8jfwHQ0SLgrHTLXwwD+eI+2sSP6Dgwoeoa6LV
         srYR3OyyRDwAwo2E/xTCptbES2qYUHvfVZbflrZ+31UbJAWY0k2OEsP7XSZoJQtMGR4C
         xyrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NREql7ll;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id r1si1081182ywg.4.2019.07.15.10.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 10:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id y15so7730303pfn.5
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 10:21:57 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr28629180pgs.263.1563211316495;
 Mon, 15 Jul 2019 10:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <5d2c2d6e.1c69fb81.3d170.6a6b@mx.google.com>
In-Reply-To: <5d2c2d6e.1c69fb81.3d170.6a6b@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jul 2019 10:21:45 -0700
Message-ID: <CAKwvOd=tQP9JRNEHMyu6ifxr77X206Gyo8Rx5q-mCRscuVi_2Q@mail.gmail.com>
Subject: Re: next/master build: 230 builds: 15 failed, 215 passed, 64 errors,
 2053 warnings (next-20190715)
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Cc: "kernelci.org bot" <bot@kernelci.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NREql7ll;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Mon, Jul 15, 2019 at 12:38 AM kernelci.org bot <bot@kernelci.org> wrote:
> arm64:
>     allmodconfig (gcc-8): 206 warnings
>     allmodconfig (clang-8): 12 warnings
>     allnoconfig (gcc-8): 5 warnings
>     defconfig (clang-8): 3 warnings
>     defconfig (gcc-8): 152 warnings
>     defconfig (gcc-8): 152 warnings
>     defconfig (clang-8): 3 warnings
>     defconfig (gcc-8): 152 warnings
>     defconfig (clang-8): 3 warnings
>     defconfig (clang-8): 3 warnings
>     defconfig (gcc-8): 152 warnings
>     tinyconfig (gcc-8): 5 warnings

So looks like:
https://github.com/ClangBuiltLinux/linux/issues/587
https://github.com/ClangBuiltLinux/linux/issues/586
https://github.com/ClangBuiltLinux/linux/issues/581
https://github.com/ClangBuiltLinux/linux/issues/591

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DtQP9JRNEHMyu6ifxr77X206Gyo8Rx5q-mCRscuVi_2Q%40mail.gmail.com.
