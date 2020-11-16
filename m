Return-Path: <clang-built-linux+bncBDRZHGH43YJRBGWAZH6QKGQEHDELIEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 557AC2B4272
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:18:51 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id p199sf5794597vkp.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 03:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605525530; cv=pass;
        d=google.com; s=arc-20160816;
        b=GTBMYko7A6p82cbS8i0XE3YUiK06Xiww5SKOpKW6d6sbDn4owmVAhNkWwu1l44aqYY
         +WDlY3rDTA+ERjovyovqbsERHo7QzuiXFeVjTOWeMoXvjSWyQ+zU+VnChU2ke63N3QXU
         j1O/UXv/79JdnC83aFvywpwp++DkwUs5IJkFWH7eZ1fGV0WKBXLqDqRLbb17xpr0+8Q4
         dyO/7xRH1cspVGof8zgOe+WaaB2qvidDOutUUfrdCS7erz/X81hbeOfdGCYCELMG9YAX
         aXO9wfahsJv4W+Ak1spogIMHJsf6qYy5sNWNvFd8jrwi9x8k1SgtHiw3lC2luSxPSymW
         9ADw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xGl9AX/y89x4U4BIj1rOqdcef82O6rWdpfZMvxSL5wY=;
        b=SRRCfbqGuzGMOTum3E2xESu9A65awljFhxtAx92XTQLKmZUBbxDlkSYlu2miB2k+Q4
         q6wy/KL3hjCqS/9Y4DXwTYGIr3GmQFG1TJIRx43EtN2/tcT4BDQ797BtGIc8GGQaI66/
         1DX/jVJlaRHQtUKGpj1r9ifs908grFsdey2f3Zu+eGUviDzlDX87m5OqS+EU0YFAVWE4
         2ILWZvaxGp4a46JXL7Ofem0nmNV2Ul5T+ypXdsUEgtvU+D/umkbsEWLiIE0lAVyHq3V7
         WyKkS9nfStu7bNIkgt9PlRoDXe0oKLV/EPFvfx0WlmBy+bTA8KIzQjfjyEIf7a6292bY
         IZtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hmuBOgJM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGl9AX/y89x4U4BIj1rOqdcef82O6rWdpfZMvxSL5wY=;
        b=Ri+owuo2sZNRTt0LdZNgchW0vB59Qy1Pgs1MDuNb/Z2fNa8AwWfVHyNIhlEGzPePou
         svdASqnSHnPSJBb0Kgv4wTI5qGBX2XioIjhaPra8iipdEuNvO0nw/zKj3ONJlZy/G+Bc
         HjVfzYKyegV0khIFjpGXszQmFuOJz+YAT9+whF+YOHmAuQKxjJVUi6wVaosDInZZ5bAe
         DrNPavehPT+VKLCZHkR42n1RX+3maMgSlvlGWvKo2YUqa22MlDriwIemopZLqAvro4/E
         bUllnq8+ihr425y1BSJRJ6zbY5q6OGj06HS/dBhcm+ej8DZ4BcNDXx/rChN2M8vWdbt3
         JZgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGl9AX/y89x4U4BIj1rOqdcef82O6rWdpfZMvxSL5wY=;
        b=jqgV8P8soA2BU44ND2nI9GhnF4qZ4xN0IhxqjHMEPto0H/SVLJdoH6sL9b2XR8yycb
         y/Q9p24KkEqsNqNEmQ2zZ1o2Sz66jmfYANNpkTHBRKqh1xf/mzhTWcrId6/FvNQcTK+b
         +aENnoZhSC2MIgpIJsxH5XZDzlzJy0XUuRW+++FMsgqN8B7PLUpxpY79v+oTPqb9FwE2
         CsXhJkCMqISHfR2OSyybqFZGpLqVTWM8+E39sTgc7rSlUK2cvmOFXpKT7ACPsqculTyl
         29gORPsPjWBa5sLDoVGsnWAJQ2/SGNsc1blGWPAmHLjpNRtY4kZ8O4ZRZ31FFmNV2q3C
         IzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGl9AX/y89x4U4BIj1rOqdcef82O6rWdpfZMvxSL5wY=;
        b=Rp1GjFJIOQ0GTAYia29o4kYGQJ5JCc4izGwNDnXwle9br5fiRB2j+HVdt/cgXLIv6b
         xkBWFfqMlIHAKJxmXXySufvqO3uxOrBv7YIjdDNJD/12PhJaS7c49ZA7WPk1fz123Vy5
         zeEFU8Ic8kE/7x7OsS5ZOXlHTPUemmVdKHsGeVUd+KqHqtQm5S0kA97w5jCpH/1p7QzF
         l8lCmr8GK9virbzsqGuZeCZcm7UQwQ+LRhehBts/7asuEMfvXEMsF29tGBMmlyiLOyqs
         JzXuFZMzVdO6eLlk12pG9G+0YcYp+r/cw+cei+Na+Eem0EcfjxU/YAZASe1MTB3p4BUR
         lRfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PkZR4e9QHBiL1moszVWGO5AMsPnsPPk1kAJ7J5Q9nCQ05ib5N
	hw7Vvp//XSF6k2sU5KThzoo=
X-Google-Smtp-Source: ABdhPJzhAlmvlep62Zb8/pkDO/uyoveGguRJSLY/uAuPJwyI88/CRsRcWLWhTWZiQNgsvSaZtHSP+A==
X-Received: by 2002:ab0:4a4a:: with SMTP id r10mr6829843uae.130.1605525530469;
        Mon, 16 Nov 2020 03:18:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3fc6:: with SMTP id m6ls880523uaj.11.gmail; Mon, 16 Nov
 2020 03:18:50 -0800 (PST)
X-Received: by 2002:a9f:21f4:: with SMTP id 107mr6263681uac.53.1605525529993;
        Mon, 16 Nov 2020 03:18:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605525529; cv=none;
        d=google.com; s=arc-20160816;
        b=LJmBSDpfyQKJflCgNc07uXv4OAtIXZuMqVk1NpTcJ8OF3WBQv7qHeAg2FSln9UsmAo
         ER2M0vQm6kF1fB2HCA70vjIFc2YVny515V4fROfDApwKjAAl6TeDGex/yzeIGsxvORaB
         jstsy4jqaPABGqEEts/019oycSi0tD3oLNdEKY0kFogNMYdSnTQLciDMKn+1Rz/l0b3y
         r3TwrddJf/xFUnJK6ax533ofoIoUeLuUwCzrqSGh1D6FlR4e3u4EMzeZUMaGZ+gewzVp
         VXqjzZiGsPEjHvvKKklMZsCgEZtimLMPaHitG/CemTnAaKueYMCDsERN+5BkWhN26RTu
         jicw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MD9xHbpoBxI28g0y3d7aQhsOLegTugTpd8AuiJspFNs=;
        b=W+Gkk9GcCFAvGFw3TIogoAqNCOYrrCAcUrnNiOl9iS29jGUHIHsjHsXScVmOyhIv7u
         ALcRD9CCL1KBSoVdj/exotkhCdHvvbZuCXWMo47F53GLFkQcDUo4ZqT15ncOF/+ivQZ4
         xiJ32nfaNIQ+sAuZaMw8TgngTeGQG4mQagO8Qn9oPnrGZSzk6C9n1qp4PmeQo2UO0PK6
         ZU9MQCnqbLDgrC25xGHzB4tRRwfiGV/a3jvBJ055gFd5gBadK0SPXeAthNrUMIykXZGy
         TktCI5wvdjHeREc//CHLlWcXIrWQ60ecIoNikJJKmCr6CeVzuSqVaWt5qai78rEoDxam
         2kpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hmuBOgJM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id s4si1280439vsm.1.2020.11.16.03.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 03:18:49 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id l14so11182238ybq.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 03:18:49 -0800 (PST)
X-Received: by 2002:a25:5f0f:: with SMTP id t15mr16854532ybb.26.1605525529784;
 Mon, 16 Nov 2020 03:18:49 -0800 (PST)
MIME-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-3-ndesaulniers@google.com> <20201116062639.GB7265@embeddedor>
In-Reply-To: <20201116062639.GB7265@embeddedor>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 16 Nov 2020 12:18:38 +0100
Message-ID: <CANiq72k=m1=vVaO4bfqGoLReQzQ9ywpyXF=-M6vbw3XzRe_0fQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough pseudo-keyword
 in lib/"
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hmuBOgJM;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Nov 16, 2020 at 7:26 AM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.com>

.org :-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k%3Dm1%3DvVaO4bfqGoLReQzQ9ywpyXF%3D-M6vbw3XzRe_0fQ%40mail.gmail.com.
