Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBR5M3KAQMGQEMWKRNTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEF132438B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 19:09:12 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id y15sf1611730oog.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 10:09:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614190151; cv=pass;
        d=google.com; s=arc-20160816;
        b=N59ViaJOQXsJW0uzZYs0p/poa2HwkFZbEnKBeciZySAxA8Suye5eXVwwZsc5/GQT9y
         ynl+43MkC3jY5SR32tFwwPfB82rpOwL89Zp06SQd/vYOzJldp/BsFSMC2TdoCm/ApC/+
         htMBrAvrkwIC7Cs6Kc0eTN967CLUR4NOU0GghDkLkFYP8MHxaZ9TNo0GObT3z0VHWrud
         G78KvKW14kEhB4T4zQaCfcYd1rnFUVeGS2jNmNyWqonu3y8ROHBySdvTl1TgbN4lKWhR
         bbzFrS+0KhIazIDPNWrgdO2icfxGste35mg+Hd5AKvafkOcK/YLVdUu90EfOZ7IJb9H2
         XiYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ljno82E+fnfgcJXPGkeEQeta3HG/8ZId8jajVmZTVig=;
        b=EZOXOicukGkn58sLfQhYes5D9dXHytOQF1DRhz7xRpfcNTp0p2uxQ53HKLf1lgwJ5A
         17fQ9pkk2u46l7VlB1gLL0O+1+ngEbTbYux7++rw0TWREOhA8mr/CPldXCQpXFrbaMHV
         21ggY1s1BbxGHauXbLRntAGspNtJ4bQYhHduUOP4EbiYwOj4FVwuCtdkD2Xg9yQSpbw0
         6atjh4mH2vQ8viRAIBnIANRrLAeQrtzPPxcZjXUfTaw8XwmBCysm9a0bfa1Sk3dgEIUD
         gg6ppnM0S/2V7UyIqfnS3n0J44haqi1mxLpholE8XUJchQC0OVBe69HmhzuihKRkWHlK
         1eew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hqke137R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ljno82E+fnfgcJXPGkeEQeta3HG/8ZId8jajVmZTVig=;
        b=cKDF8ZOKGTHC08Y3Dz3puij952gW09FJf4dWNC+ZmhrtjGaYnAulf0cXZBksErBzbf
         9mJypGntw8n7x7aCaMXBi2l59EJy1L/i2zgcQisMgVNZvtNbAgL7DSrZM8Z2ymQFsZKt
         GyKZ10PPyeQJw8V5TfUwhgYJqoD+Bw5O06DQQLj5PKJnqm/N0AlX0o1VHgxng9eatGGU
         DimauPCMTKjI7pTnvzjg0Qrc14Ny1Z+uXvVdGhdb4O2yOAxE67EcmZIqocJR2x0p8zr6
         dntLf3lYLjThGkIw5ZZQf/uLF9ZgkLGsdJbwdjkSsjuVPN8JyAjsQJyOpRvEefR9LqaN
         Qm1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ljno82E+fnfgcJXPGkeEQeta3HG/8ZId8jajVmZTVig=;
        b=YOOgf9d3FZkfkfXRV0xBVZqs7S9Me0GNwGlf7biV2/ilcfOL62yKZlUBpcoLvHCFY6
         uvsRyl2t1Np3cT5HtNcmMrJNX23Aszl8eS98egLcFQFDAKuKgiBj9gqVOW04owRi8rE2
         TBS/DOcYF7NEY3cOyee4MLDUctELymBbLlQuw+omk1AKg4yV0dEvqzuwfYo+K9swl4eV
         VlofmnslJoZRnzKFaiszkfhsUnedG8rdojE6KJmjutdYEoh4WAXPUOa/Vysj8tD+pP89
         SiWwLmF+kN+QSQVVkGkkXnjgWbfarC5/iwlBGAkLsIqTtaN7oq1p5uI/CTTXVAtsvNuf
         qTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ljno82E+fnfgcJXPGkeEQeta3HG/8ZId8jajVmZTVig=;
        b=BBCim7Ra4UxI7SGI824p3m6Wn8KYS8nNnXBf4ZAt+BGXmdRL06S3BK5b25p8pqTFQY
         XQzyxw+0U4M5073BrHD4CC0ONzyOxR8Rxj3DS7qbm4I/k7eIyUbutoATARfpiloUW6b9
         IOZwQ9F2o9w2HJnbDEGYGza+6Ul42lCp3mvFMhytCsmBnErDHcuNnlDY/1pj6wFjDZkv
         lgEupeM13GrYPyqzfyHAEjU6JnAgfHVcPC4dJ69K7aV3RuWMTApQjd02Tgapv46eZ++a
         yjCXk6MgrDs5kbQI5skGtZ0tC3rdyXE5O3O/eCscowg8CF894PPRQw476fkv+WYDITLT
         fHvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sFkE/DX8KnD2DLpuGb/EXcBvUkiBAwDB9A/3j6Qix11ylsJr4
	dfbG5pdgO0r4aykcYDT2H8U=
X-Google-Smtp-Source: ABdhPJwVKYJ/qWaV4Q5Ju48ngOTh5CO6G5vLDZfObhuNyypaDthRkqfPSVRRRv9eO7dOTtVY+DyY2w==
X-Received: by 2002:a9d:7519:: with SMTP id r25mr7358947otk.172.1614190151446;
        Wed, 24 Feb 2021 10:09:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c86:: with SMTP id c6ls885912otr.5.gmail; Wed, 24 Feb
 2021 10:09:11 -0800 (PST)
X-Received: by 2002:a05:6830:1154:: with SMTP id x20mr9383157otq.338.1614190151081;
        Wed, 24 Feb 2021 10:09:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614190151; cv=none;
        d=google.com; s=arc-20160816;
        b=bKC5hI9zC3hkwVDWAiVMkZYvDcOHRNtc+Cm+nISWrSVwnP1wXi0Y6nVhYJHO3fdWoc
         1ZsElGIpUXb0Au2wEi8tJHLS1m01grTHTWHwpnpnOKL1YKpqo5DKQu3MRFQqJyB/9r6x
         p4PQNGTeM72GLGe6OjcX4x6M9N1mpOwoeaNT6RZ2eLrqUaSQtgsFRMseQ8fnfXWsf0oa
         4NODCF+ZF87wQKxwQpb17svwwLc2o7Hvw2cdY4zaY1Fm1793ZIRhTH8RYmEvPNWRjz7z
         xctph9GtFA7qvycAI/oFObVZMupVD7nGOSJhy0eUMVi9j1FU/Ha9TtuT5JppwTlQTKgn
         jjRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dKCWFwCtere4GZoadEUWnq7pobLJDcHFCquipMb1ruk=;
        b=gtPVIgjRaEUWPZLGUxgwGMCOahZnoDHb+K1kJUNyiYVsI8J7/ftrkSmsZwA27Jk618
         Y0erhrQIzTsPWKoc9wy4NDdpAoMd7uwWH1qokEm8BctMNooobMwtFuc/XXzi9VnUuPSR
         ExyuxY8tK9yfADJCbfN0fa/HwHf71XS9hjG8P2yNjIS9qzncD9kEnwxMMhrXsnmiWGEq
         g3Sm8ZD6WPZILTx1eXvrC1lMJqpiZkEoV7dUBHgQtbRkg4tV+s6obCtzXv8ilu+sHtDh
         wl7ENbvaAMu2P4/4o+n4IvP6cf36H4MshjfjcmOVneaxAmphwpfLjWQtr+iBpuWnUmdM
         JuoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hqke137R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id y26si261272ooy.1.2021.02.24.10.09.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 10:09:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id f7so2507997ilk.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 10:09:11 -0800 (PST)
X-Received: by 2002:a05:6e02:13a6:: with SMTP id h6mr14196474ilo.10.1614190150784;
 Wed, 24 Feb 2021 10:09:10 -0800 (PST)
MIME-Version: 1.0
References: <20210211194258.4137998-1-nathan@kernel.org> <CABCJKueyXp5EQnmZ7a6HR87oKwDBDukprnJWT620McSYFd1SMg@mail.gmail.com>
In-Reply-To: <CABCJKueyXp5EQnmZ7a6HR87oKwDBDukprnJWT620McSYFd1SMg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Feb 2021 19:08:59 +0100
Message-ID: <CA+icZUW=GTV0L884wdohaOdFmg4E4wdtSEOgF+KEGPcKzYOoow@mail.gmail.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Gabriel Somlo <somlo@cmu.edu>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, qemu-devel@nongnu.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hqke137R;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a
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

On Thu, Feb 11, 2021 at 9:41 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Hi Nathan,
>
> On Thu, Feb 11, 2021 at 11:43 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > kobj_structure' expects the second parameter to be of type 'struct
> > kobj_attribute'.
> >
> > $ cat /sys/firmware/qemu_fw_cfg/rev
> > 3
> >
> > $ dmesg | grep "CFI failure"
> > [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
> >
> > Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> > this would have been caught automatically by the incompatible pointer
> > types compiler warning. Update fw_cfg_showrev() accordingly.
> >
> > Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> Looks good to me. Thank you for sending the patch!
>
> Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
>

Environment: Linux v5.11-10201-gc03c21ba6f4e plus Clang-CFI as of
24-Feb-2021 on top built with LLVM v13-git.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW%3DGTV0L884wdohaOdFmg4E4wdtSEOgF%2BKEGPcKzYOoow%40mail.gmail.com.
