Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCGH4GAAMGQEEY3CAKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFB930B186
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 21:24:41 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id m3sf12847000ioy.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 12:24:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612211080; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2NwR442bPCsz9NS7Dp1ivytFcghtFPvKomVywls/j/Ghc8JfiRdljVSLBMjOJzckz
         qNysiDjhqNhin9DeKvYyl2jalAfKRDXvtjOWHY+g7iwTAtHtuaeq89dMV5n9ymGaIM4P
         q46y/3/sbH6LveUgvVJ+XEpWM24ckx5oWk1TU/qPOm0kf1wZuKPc0JJv0nb6RN6jYqGU
         JoGLllD4uzscps2qtCaxrHpQ7s5aHXaiuCpKNGcXspqkRNJX7eGanm/nZSm4A4eKwjDw
         GvzbM/09BzHBodVqLt2IVBMZ6ZPYCB9imtIeihGLpMoaMNdDeYdP/h8Bc7QFgSQ4Q6+V
         X/qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1WHXDFpjnczpPikRbc+Z+jaoyNGlWqlnLJCMuh2mMMU=;
        b=x1EXbbRtjCkUlpLKCuvZIvQu5YjEpdH4z2e3Riv+9wdIKNYberM6gZNDtBzQx1mBO2
         9TVFvjD3JPkjaiQC2jECa25QzeC6KpgVSkpqQOsail8sIHl27wmR1z/0O3wUoRuC5pfu
         1HFkyRCBth+he8a2wL2uPv2yf7526WnBj5JeA3/Eznndaz3/eRBlpBk3CKtOiBXOEY0W
         ZATtWbEefvn8siwfkMXM+BG5SR1Xa/634XlBg8t7D4Ct38x25yS5/0OBGT+xJcV/f4Jg
         FXxS8hVbcM63AjvLXaCXerP8ehUzWYbRGvQsxalj3rYhWvp24v5PJlvQHrhNXo7l0ZUU
         46+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JGeWP9qu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1WHXDFpjnczpPikRbc+Z+jaoyNGlWqlnLJCMuh2mMMU=;
        b=O9zuYgqkO1gFM4jQO21K9Y/1Ug0ok3Vm9qNTp7bAEVqzAh8Xhb/LViYZHJD/NgjO86
         9680++Y00Zc7BFinb/xZOyR3CKc5u3HsNyO8vlWkzrdDmJv1uaU0gcFgZpocE7a3WJ8J
         pXz8bTA6t+2CiYjkRQRNZYlBOCalnaPbXmtGAjvfqCX5MMX7ATup/ytbgKjz2pTJkXO8
         JFXTTKyCcAbbupDIT+L87XaTQu0XOh9uUtVoPKnQfLZ6qPxcg9C/0abIwcO2nWcX9R8j
         C1twhcYc2/AHg/72PyjAvbXdJv3ll0Rw3EwaIbNqapP/yhshKS7UH6J8N4pgQ8/u5Yw7
         OfmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WHXDFpjnczpPikRbc+Z+jaoyNGlWqlnLJCMuh2mMMU=;
        b=ssY7jbmya7+EO88taVkDJINay+PjdXnSnbe81mkcjssof5d5abdGM873J3tivagkYj
         eLV3APkcOP/OpaZTMkie3MdOIhk/mGq1GxQm2iyv3L2Nvt6b+d0MMI6h+RoQiJRHufQf
         LJk2Uklw7hVuKOstPSpIzh2XRdnNb/k+m+C0nyb1Kr7x8QeUUc84WWlxq/ou33bszhXV
         4YkbZeke/oSUxc0VStT/YgytMDFz/ZOmqF3PegBYgKkxJAn2hVXuK8lKy7dBKCrsvmQ+
         OR/imc908GsGExFPNHYqklyxbEOIDir237dQjDLniWpDLd/CW2uUSpjelCFEHfQBaI5P
         452A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WHXDFpjnczpPikRbc+Z+jaoyNGlWqlnLJCMuh2mMMU=;
        b=EJMyvMbFSJSZhYF9m6HJflUpHH+9pdfIClDdZLppYgbnwN7HQAbdVoOgpYzz5AhCjW
         bDGfvkRUNq6cOeXmKB47k9t8x3mZ0QK5NNpQtECZgKCenzNR+ONJfBwMiLxXE5hNI9Py
         nWV1GDeuSR1BaxQtKeo1W6fzTueZPsBCCiF6AvRXstROb/g5ABijb36UITA/61c0Ab3d
         SkPV8vlx/LJkpg+4YCPVub1I6w+4X/wHpQvpJzQWD+fcmR2i8dg9QyhxJFHm4qvQ3WeK
         lNf3+M3Ff9Nky3S5eC1NNVECrD9ohhQnoYr8Lxls3sgcz7kURHjzpj4+ex0D53Fwctxx
         ELoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XnWwJuGbW8T/YXwFl1cEj0zLoaCCHTHpx+gvC3P2zLWSLTg/C
	X1OTNNabF6GG8XQNvr3zv/0=
X-Google-Smtp-Source: ABdhPJz5nZ7qwqn263hRA/VgpLZXfFqUEQ+KZuR3RgAkQjjVW5cAUz5zAV6QJ3QbBmK74nwxk3uHLA==
X-Received: by 2002:a05:6e02:13e8:: with SMTP id w8mr8703554ilj.273.1612211080428;
        Mon, 01 Feb 2021 12:24:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9a0c:: with SMTP id b12ls2139370jal.10.gmail; Mon, 01
 Feb 2021 12:24:40 -0800 (PST)
X-Received: by 2002:a02:6014:: with SMTP id i20mr15650121jac.101.1612211079977;
        Mon, 01 Feb 2021 12:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612211079; cv=none;
        d=google.com; s=arc-20160816;
        b=hHS7sQbLp+FXrEca32im5yhSr5M0F1+qoKbuUQR76ZGVoZJOVVejfviOoBeh4kV9YE
         90ux8qix6FP7lyL2lLpfbJm4kBXAogmVzV3wRn3itDyTSJy6fxVsh6RFlVbspx5o1d/h
         oItx5pEMkw8OMV4JIluZxgAZANDT13qrlZ2aT6grH1tBkxFuIxgv5F57ZFjiy7tEFrqe
         np5tL5qIEFpp46eDg3uOoGFXFNlY2Ot5P3GxTGeemvS20fQLSc61P361KUawNYUsQL5k
         O3FmDmED5KLNanioFgpp6xTk+2AYrIDreUxL/mpyYwVRxnXnn6i9ZQnwA4tDXaXM83nR
         VSQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hzDabtJNMYLz0NMxXtonyGyepZO30uHQT+l1hNf4sxI=;
        b=liw6/FLQ7/LwFCjeAwgssbduzu5xhjSUi3NRrvLOwXPQBAOBRH0SZzdEbxW3alPjot
         V3RZxt+QOaTSKuZc9NIbftt31SXCc+YQ80fiMhehGb/abLuhkzzNaeu9PYYhLeXChjmZ
         pRKg+sZXMYPQzAHbHjI2whgWjmMxJlSMCt9syIAlOLsboPKjFC0BiTs9b3oI3MMXCRK3
         MdkmBJfoMh3RrnH9T5jys8w3aK0qrFTBAyz5MzXSBc5VOLFzWqq0wLtE1udWY7EnPC69
         4acNhE/snqwnDDvgt506ZNdKtF9n2FEsHH4SXMdxOfh1jgtw2NcRDF5hkwRDsxvBLnvp
         v0Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JGeWP9qu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id 207si269160ioc.2.2021.02.01.12.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 12:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id y17so16909971ili.12
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 12:24:39 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr13968249ilq.112.1612211079708;
 Mon, 01 Feb 2021 12:24:39 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 1 Feb 2021 21:24:28 +0100
Message-ID: <CA+icZUWXYaqgRpqyJ4kNuM1XiDBK4jXSpzw1vDXY142dXo2sTw@mail.gmail.com>
Subject: Re: "ClangBuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JGeWP9qu;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Thanks for the video, Nick.

- Sedat -

On Mon, Feb 1, 2021 at 8:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> https://youtu.be/GpiWVXKs9Z0
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWXYaqgRpqyJ4kNuM1XiDBK4jXSpzw1vDXY142dXo2sTw%40mail.gmail.com.
