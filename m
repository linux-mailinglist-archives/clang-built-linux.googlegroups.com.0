Return-Path: <clang-built-linux+bncBC53FPW2UIOBBDXK46CQMGQEVDB3JCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCBB39B620
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 11:40:31 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id a23-20020a05651c2117b02900e9751e7410sf3948168ljq.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 02:40:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622799630; cv=pass;
        d=google.com; s=arc-20160816;
        b=XufP1aXQDaQ7W4BEANkEUBxvQyJMCyVdOD/FeTMuRV9CSToMKbm/WGFRbjwKCv8GXH
         9vVcxOuFVxCGTilpZP1WwpZab8cGU+j/6VQlYKr7X51LFFoZu+f6+lOmmpppwXpunKxd
         kHPIF7N7zkRtKbf9vVKXJskgD/HG8U5jgSUWC5chshwsTx24jVga9EbBiJlbBDZl8Yyd
         eTCb5fwHOa7fBFpN8Xhq6EA+s7W6POu6cjx/WAwV224tlALndktdJ5+X2rdcpiY8tmGd
         df8hJoWF/p9IiWAVJ8rfG9qgfAgR1YkoAkg4kcKTKQLDKOldA88RkOeVjzkwZaK8mfVK
         V9Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=zLXTMU2JP3KT4GKrehFlDbEmxtLVhPGq/hyn8ndwi54=;
        b=EBy8gw4qbfatdYTnWmq2FHT3HN/IwHAAHLzpxlTKutVmd7ZedJFqS4eIGS3JogXfFA
         x5JOV4Em5AjbB5UGJkgx2XHu5G4P7xvUbJUirmbXLMpyCJZ7rUMLf/FhwuYdmf/ghqhi
         gDGSvgopR3tbVmD9hBs5nWXpAYt/c/hBbN7Q5RajF6VITnwLtpj/11Ho+sdJRbGKv0lr
         uFG/Og7FtEexDqcCGip85vcBX5QplVxjqurUEToenjENnUN8R0X+89yf2ywODIG35TbF
         arTixS0ehes3TBc1iijymr6W3kCDyANvb2vPSNg9ugVrSbg08MSq0HYT//xruyTn6bd4
         YClA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LJg9jPjD;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zLXTMU2JP3KT4GKrehFlDbEmxtLVhPGq/hyn8ndwi54=;
        b=i8m9WOCNQDkj8mm3VVG8CgkKDW/QUM69Org3e6KRZT/PMjLuM2ajUoPen61GBo2XIt
         kZaBdAhHILqNbw3eEIpN/RWjP4EBydsNC53MD4zz6yODhAx5wSLZgQfGNVPksBQ920ll
         WWK6zlnu3aNro2Iy+ac7zNCuTuI8Zg7Y1eoxjQvs2Af0UpCgqpS9sdAET0rJljGKYlFo
         0Uzs00J/tSiq8sRPu6nuondj5jlqdgYl0xnM3rRIQxD3DHAtN0dcaZ1ZcWXYxYEezXyD
         xmbzRp547eGbS1nqXfBq/UoKV1cek8zTFm3MOx6vQNoHvtOJ0oL57pCl3MBvbrHQy5Y0
         d+QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zLXTMU2JP3KT4GKrehFlDbEmxtLVhPGq/hyn8ndwi54=;
        b=vegHLCybcZE4kK/bwJ0K5wuuzmuUWNW7m4bWX8GJI9wHpaoybvOJiSLkYiSV/36I+u
         rtAVKfj81U/aV6TEmWqa35IH2/7nwSSVC8z7ee5FYSu6gRUSEPwJ1IT/cjTb/MXFJv1A
         Q/v7q849zXXZUVJogpCQdHW8vhfA7bywqHT2SPXZr1qjUK2QqcpqSgFSBEHcaGY9FW4J
         dNeG2mPEDkMkTyOsaYU9/K/2K5GCeiOsBHR/NJAH3CHXQHwNGNtLOg4B2FlXlwFRaej2
         A7Qw8pK4EbB20OY3Jq3JD6/8f0Qqmq/mdW5dao2M986cl12KlkEH++Q5tvqepuzEe6UC
         Tc5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zLXTMU2JP3KT4GKrehFlDbEmxtLVhPGq/hyn8ndwi54=;
        b=BpAmX2A5RFVumUGWQkh0KwbArQzGQynL9fhdHF+KFKvhHRsVipZlCwZxxsy9l3W4+M
         JIhZluxMDxTMhrcb170jzRevL3w1sZ3jpZh/5mzhZJexq0ReiuxLx+jsyq0CyOOSMGZt
         CC7pk+h09NCsg0qN/Bwm/l+nBt1TpC/vho/q5UHi8mOW3KwSbuurDDT9+pGCY78nEoNc
         tWJ0RgMTGd+DbZ957ixofbo7Nu5qLk+QeWdGLXFTcp+3eV7Nluix9N9D3DzqfNenlFgf
         GRbbP+eeVGkJWFO58mBCiOMtxCvXnDDATzqIKd/dBvTwXXXi05gX/ZNSNP8/seBiQkqM
         MhDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+CD0MtJ1pa9EY7WLbWlnezc0BdL15q+yZoJt+ExYtD2Ibgo7R
	nc+MDij980R/8UV9wW8PBrQ=
X-Google-Smtp-Source: ABdhPJy0uIXBqSkkToIoC04xxJMpd9Tbd+vEGbX7Wri3rJ9xdHD420qSNGcI+aVt1/A67uTwMWgEaA==
X-Received: by 2002:a05:651c:321:: with SMTP id b1mr2849074ljp.102.1622799630839;
        Fri, 04 Jun 2021 02:40:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls131951lfa.0.gmail; Fri, 04
 Jun 2021 02:40:29 -0700 (PDT)
X-Received: by 2002:a05:6512:20c7:: with SMTP id u7mr2146525lfr.397.1622799629678;
        Fri, 04 Jun 2021 02:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622799629; cv=none;
        d=google.com; s=arc-20160816;
        b=ve7ZBUSD7ChC+GPZn/BApMZ0uHW79vE8y5YI7f8JMiYaT2rYne3MqPJSXofOH6H+zm
         brE8gizd6Dho0lB+VeWRyQoLejlK+qmkPZYsoksioJuTeeO+y1mljUrHARI6i1XbyikE
         RniT79JO+pfTcML1/TcCKShRvotgeYdzbZN6+L54EJqjFkb8C6zndGmWbWRp/HgzH/4C
         sn+eadFBrfZE48MGC6KS2NUM+yOiSpOJq1CymGa3/s/cmDlYoutXfwXO2QzMsiHLIuyH
         rk9QHijOffc8Jm+5G5H9AnT1FhrI7/I0LymTDA69wOHk8k27unoqODHQbrhZore7PkJw
         7rSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ei8pyLo4r4uT7uyrXWXyiKmrptGk/QFssNB0l4EQmXM=;
        b=AMH8GyNHZeDr/aGfIz/8jqX3uN1J5p39aAiVYDml5U14ZvKMpZ6AYBv+HwcIFgi3rs
         doJ1PkV5zUgTX4Lc7rvCfQ7AMujUVJbhF1XNs8kynA89kWQ/eJwDk2Quqmz0lOV0UV1g
         /kiEoeiKDYmODB29lZaUEsltmHFudUT84Y3X6z+3TL8xGLurX7brBMqwdELYHHye9x2S
         XKWbQMOKakoutpOklEyakt3NOi7OmgdCPxbViWRTu0I9f2jSsTXutIg8nyyf4yo5gDYi
         266gsnKe1NhhqvZNXHbRQ43qm/YLh7oBg9+ZGT9VQgXCUv9rF76T999cEzdSclKTC6Yw
         9bNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LJg9jPjD;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id w26si212444ljw.8.2021.06.04.02.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 02:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id p17so12367894lfc.6
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 02:40:29 -0700 (PDT)
X-Received: by 2002:a05:6512:3da0:: with SMTP id k32mr2225018lfv.1.1622799629489;
        Fri, 04 Jun 2021 02:40:29 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id q127sm656224ljq.88.2021.06.04.02.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 02:40:28 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
Date: Fri, 04 Jun 2021 12:40:27 +0300
Message-ID: <3979125.JPf0czqrma@hyperiorarchmachine>
In-Reply-To: <202106031436.132E0ED9A@keescook>
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com> <d7e94352-0b24-1ab1-8b54-b6ffd4347963@kernel.org> <202106031436.132E0ED9A@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LJg9jPjD;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Kees Cook wrote perjantaina 4. kes=C3=A4kuuta 2021 0.36.39 EEST:
> On Thu, Jun 03, 2021 at 02:14:24PM -0700, Nathan Chancellor wrote:
> > On 6/3/2021 6:38 AM, Jarmo Tiitto wrote:
> > > Based on Kees and others feedback here is v2 patch
> > > that clarifies why the current checks in allocate_node()
> > > are flawed. I did fair amount of KGDB time on it.
> > >=20
> > > When clang instrumentation eventually calls allocate_node()
> > > the struct llvm_prf_data *p argument tells us from what section
> > > we should reserve the vnode: It either points into vmlinux's
> > > core __llvm_prf_data section or some loaded module's
> > > __llvm_prf_data section.
> > >=20
> > > But since we don't have access to corresponding
> > > __llvm_prf_vnds section(s) for any module, the function
> > > should return just NULL and ignore any profiling attempts
> > > from modules for now.
> > >=20
> > > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> >=20
> > I agree with Nick on the comments about the commit message. A few more =
small
> > nits below, not sure they necessitate a v3, up to you. Thank you for th=
e
> > patch!
>=20
> It would make my life easier to get a v3. :) I agree with all of
> Nathan's suggestions. :)
>=20
> Thanks!
>=20
> -Kees
>=20
> --=20
> Kees Cook
>=20
Hello,

Ok, I'll make the requested changes, noted by Nathan and post v3 patch soon=
. :-)
Btw. These patches were  based on kees/for-next/clang/features branch.

Thanks for patience.
-Jarmo



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3979125.JPf0czqrma%40hyperiorarchmachine.
