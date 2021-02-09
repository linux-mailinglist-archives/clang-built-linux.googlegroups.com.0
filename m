Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7EEROAQMGQEEWR6XZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2D83154BB
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:12:29 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id k11sf11354597lfe.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:12:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612890749; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5pVON9JD994zJvZz+sbiE2wMr34h7JV8OryEt3AjwU3srwmFGJdBUJ6GqtJ9+5fZs
         hoYUJz/qbmiJYpMTt/FQJSOMo0YI6vaIMX86BOmryfubwM7DSdhYLd3mT5EfPmrfrog5
         5qjPq/ZBuDxVMOZNKKGfyVippAWdMq4LNc/v7OHdwvCeLG436qMxnDlDb9EsuWTw+ydj
         PZqk7dckGJVdrmwNVO3nd270jDw/1Ou/Vvki+cDTNsylAskAydm9Gx1zAFN0RjOeinXy
         VKTxZGsxyrP4qTw6jNEuC1QNlJN3dCpeDjDLmVmdyaG+K9zC84tuWPJaLKvYonzzUUBD
         V9dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sBcLH2UlBTUzLSOBpYEU78QJvMSVqYDuARN+gm1QiLs=;
        b=ldk6HrjJz/xxOpksD0AShvVTZOSbDAYswroVSpg4eae0UDvIcudkYYYQLE6vuH9Chy
         QWmwelUz96/lm7FiSOq849mt5bTFXikgUMUmtc/TaEnVFI9TAh/c/HJ5tje4kqno7etj
         8rXe9sEJzhoa1ujU1VCCifEKUVZUmrtOVOwY8sVXwGQr+cmEpFR1NNC+iUrpLH5wrKwP
         hOKzqOKb4f58fOAAy3/GDlRQVPzoiNiqykzyaWeDYYW+c0HvIuAOZHxYjNELtD9mpf4N
         3eJEF1TAFiTVp7Ol0+W5X6AoDd68rNKi748tM4sxMZoloFwkgasPRQbDFJyFoAKjar+P
         o+Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o6OBUPJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBcLH2UlBTUzLSOBpYEU78QJvMSVqYDuARN+gm1QiLs=;
        b=a9FFlA3gSZE0uBNmyF5A19kBZTuI6JjhufqfXxMiMkL7mHzjjD4TL1FXzgLGy/yMzh
         EntUOu1txv+Wd99VmCDsYWFAOgr8od1gBfgMZAUl3lBFZEQ/8ZEkCWQGEkcDghzR8Xd+
         9OWHF/ZLEv2kE+MmrsuwP0CMZsYk8i6BSYPd3c9pVgHSGzb0j9flNFitej4zQ2u/Riee
         Im7TM4+XqpvUWRKCBVNeZZ9oQMPal0QyzX8mGAdlYp3vgqycDu/KHsOD5X25e1Kz9ucM
         OoGYV9+Jn0mNyDVzRZJcP83C3SPZTyJVeaKuXyvSUYVcmYRiGxoxkZ4xwI0LLkk0JILf
         euiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBcLH2UlBTUzLSOBpYEU78QJvMSVqYDuARN+gm1QiLs=;
        b=kTsxuWlUjCYKNonMpWWl+KxSSAoikY5ggkD54s207sLoIQRf4V+PuRHXY/rqQY5F0D
         XY9mgPFU1BmY6Kj5ECoSr5EYVm9vo5KupJZnfJHeDrHw2gw9YstBSBnMRxTGeHyP4pcb
         CD+/0WP0p+qCesAcqkO8QbrE2MvaF3/w1FT3muE1Tl9REFbNcsb/u1IlxXHvnzmfb2NI
         Djs3VvB/HmysrZvOTsn1q1HJTfz3J+q3Zf0MY7kDQbGEsn7KKznzHXTL5tgVl+TIyY+6
         MxEaMbscxNHP3g1H42aVSpq68iMIfK0TCLl7O71j52Ets5hbcnx/1kkUx4MoISnZh7QR
         0GPA==
X-Gm-Message-State: AOAM531mz9U1Lcd7l0nlwilwY/cAhW9yEdPdeHQPv2VK+L14uYqLc9Br
	DSycASWEaWeUMiCdkEx8ykM=
X-Google-Smtp-Source: ABdhPJxbzhmmSYO2Zn8JI+ZP3LBilbb+XXHR51Ki7jiXiCng0rJgc7JIMg4kTfJxez2SdtjjFDXMFA==
X-Received: by 2002:a2e:b704:: with SMTP id j4mr8057667ljo.332.1612890748908;
        Tue, 09 Feb 2021 09:12:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518c:: with SMTP id u12ls1487106lfi.2.gmail; Tue, 09 Feb
 2021 09:12:27 -0800 (PST)
X-Received: by 2002:a05:6512:228a:: with SMTP id f10mr13197026lfu.412.1612890747884;
        Tue, 09 Feb 2021 09:12:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612890747; cv=none;
        d=google.com; s=arc-20160816;
        b=PW7Ug+TUMplXM0COoUAoDyI5xMyrxm/uBfZU+exfAQNnsaKcVZgtN/y85LLTflAYui
         UUdKecPw4UZ0Nz7kWOkcZqCx4VSBpZvb4b1CjZDLSolRW9kUqyMYAm+uqgiNSZk3esIk
         mR9pvZKDVmQ/mC7HZfpD0auKljzalf7a3wqmOR2s3YLAgN3r2GwA9cgyfEGYHeCnifsx
         umm6uH+cMiJL199B7KjkYPhDWAK+EQFUCMEFS9zB3jF+RzAA3Fim25Lv+bl1eq3UK0MC
         DKC6+9dtQqzDTfaOBVO07kx21mL/kmfewN2XqV7SMxy5vl8tlHZCoN9xPJ+XFfCSjo2I
         97Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lDMSI3v7ltMIvBubdz7fHFJUzTUea6dzVTOKPGGvbQ8=;
        b=qxN8E4Fa+f7WBlRLSTbjFKOKXFFeIOP3nHoM/6O0K3vNlwsvTrx10Nw2Q0xm/ZnDLT
         ed8gtvT+R/7oB+BsTBihHhwFFviLH+i+G7ikvAAhAB/psnxEabmO2mhK+IbRowd5bg2a
         wr9lx84usEPrh+PUFHSFYTx/fFsS5l7UNuqfNGRfQmBYr6UekooRFOQdI4p+PlHwzp2f
         HDgAEUoXFu4LhMqG8xcOgsmXaldY9cWO1g4CDu/AMaFifKloqThnbNsVCyS4Sysj1Hsi
         p3q+1ClkiPUPVbsPQVE0mhg9VIL1K+UI/FTQ7ZVGDTdFAFPeXz2ypACxjnffWd16Ej0C
         /VZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o6OBUPJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id l24si425875lji.0.2021.02.09.09.12.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:12:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id e17so2826621ljl.8
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:12:27 -0800 (PST)
X-Received: by 2002:a2e:b0f3:: with SMTP id h19mr14365459ljl.233.1612890747452;
 Tue, 09 Feb 2021 09:12:27 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <20210209163514.GA1226277@ubuntu-m3-large-x86>
 <CA+icZUWcyFLrFmW=btSFx_-5c-cUAYXhcjR+Jdog0-qV-bis7w@mail.gmail.com>
In-Reply-To: <CA+icZUWcyFLrFmW=btSFx_-5c-cUAYXhcjR+Jdog0-qV-bis7w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Feb 2021 09:12:12 -0800
Message-ID: <CAKwvOdkQixhz1LiMrFx=+zf5o29UHaUrGTz=TPEsigtGakDXBA@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Andrii Nakryiko <andrii.nakryiko@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o6OBUPJR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Tue, Feb 9, 2021 at 9:07 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> We should ask linux-kbuild/Masahiro to have an option to OVERRIDE:
> When scripts/link-vmlinux.sh fails all generated files like vmlinux get removed.
> For further debugging they should be kept.

I find it annoying, too.  But I usually just comment out the body of
cleanup() in scripts/link-vmlinux.sh.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQixhz1LiMrFx%3D%2Bzf5o29UHaUrGTz%3DTPEsigtGakDXBA%40mail.gmail.com.
