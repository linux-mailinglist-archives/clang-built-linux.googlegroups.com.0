Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUM3PZAKGQEPQM627Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A5B1708E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 20:26:16 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id h6sf63315pju.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 11:26:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582745174; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rij7dzcuf/YmOf++kUKrpyEy4uuRf6b17wzB2DeTT5PyRFZHLFYbvPigyOJ7LunPKC
         vQKgOEMemlocXGkxyaR+M5e3DwMP65pquBNw76BK6mcBtqHwDvD+ZB5yuEzyEPddI9ED
         ldW8yWplVwPRHubnx0VsQb4Jq7xWAuZIkgViTOXjow1M+EHqw4WZuyOR0g51qFR8l166
         mRrWp8d1q+giodyFlyGjFFWtynxfedpZ0LaNW7XNmJ7H9cadXHyNEeMG/b+39R4dCp6J
         RzfRdH+QPNZVAv1lA4Gq/JaDMRv7nzQPS4G3osno8jDfOcELnZTlTT+cUPQxX4TakC+j
         H4xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+wEq6A1Di8hStTIvcFgR0OWmMVKwxIXRwT7X4D8C0IQ=;
        b=jd2PnzeKzH3eP+/bXxPGroNSqDJk4QRdVa89TuFWOpsw8XCfi/XDFONNQfqgs+BgZh
         GpMMZbkVUiDI5LvTDpajr5HRxZX4nVOhBOFHsiLmSTh9XCzRlAIG0JrFB3ER4OCVP4z4
         OX8ZcvUSiXxvpDDM8Ir/58QERfU5atix+hHSaLrjeJAurRvFRJj042oJPWPDPmpnju43
         sMUXFPbafiY3lpF6qZC8hCN6WdM2ZLelrAF7VkyYB7Wxx3PKLpf9Fd4LzI5JAZskdaFD
         xSEjCgBgwgE5Xs0PtZrAn8m6/OB0iA9Ms+BV/UwBiqv0rbQ9DdZSpHwlX7w46bZolyZh
         TsPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JvaV8Kgi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wEq6A1Di8hStTIvcFgR0OWmMVKwxIXRwT7X4D8C0IQ=;
        b=j0XCAKJY+3/+KFfFQTwGuxHnhiR2jM3DbrvbcmryfMaut+TpORzVc/LEzuz3PWJ0di
         VVbgdL6Z+80+Ny+iOmut+7eKrkrpzREy6QZ1hLRHKTKHAKG4LXNmjRFoX7Ni6PnHIwYZ
         GoeVzDyRHCujK0SD3LlzF+TbtgFQjfFYJppuZ+9fnkYdudovC1yP0CTnr/Q3RlAh8E2M
         uk0NWjdrCgZUzJqFQLj/TB3MrMHribX8oW5fzlvmrn93cFd4a2Ih3hupnPVtku7jB1a4
         +5NMIrlbeKxW6M0ux+48uqUMlT4yDsAeSOr18L28GQ5cZ8Baq+tVs8p8bXdtUPqv6NR7
         fsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wEq6A1Di8hStTIvcFgR0OWmMVKwxIXRwT7X4D8C0IQ=;
        b=AQ2upouDyQpId5Azq2ys1cgPaGBpgLsAZfSI/jy+EByfIhNDpSUbQIYkCWpiPj6lEg
         lPv5H419PoPES7i4gmXjFngargZSBFc1wCw4kNptYy3/eQZ9GmQ/KuXmIqMrlEnfaz+H
         9gy0Fs/qzu3s0XmOonm7J5XXGF+KDMU/b4zPzNyWQeeWJI08hgyDDMTBJ6C/99MHA7RV
         7cMT8OoPsGmHE8VkjFKjDm8V8+LtwoNoeL8AP+wMOpwSnYqVUGEvgaJ1JdBxr11CLagP
         gjgZ43be5WX6EzOs6A32TbSN0vVraK+PQ7GovzJzI+pz/dwUBNMi+uStWLVj/uua0hrP
         payA==
X-Gm-Message-State: APjAAAWib4QMe8HhNmeSAcDUH3PtVTOOLSoPVN5OrMsLpjc2E1HMUHeX
	ZpaSvyLjEOpnkq7cmyBHBVQ=
X-Google-Smtp-Source: APXvYqyma2sOTfJLuvGfeVC/nzxRlfOD/4BqmAwGH5y+OUNrxM7X/r+bNqzZUMcrH1W8FDiTCU4cGg==
X-Received: by 2002:a17:90a:804a:: with SMTP id e10mr651083pjw.41.1582745174488;
        Wed, 26 Feb 2020 11:26:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff11:: with SMTP id f17ls59287plj.4.gmail; Wed, 26
 Feb 2020 11:26:14 -0800 (PST)
X-Received: by 2002:a17:90a:d103:: with SMTP id l3mr688048pju.116.1582745173994;
        Wed, 26 Feb 2020 11:26:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582745173; cv=none;
        d=google.com; s=arc-20160816;
        b=r764xh3qs0S2WJvi7sNCa+W6Yv5kv63+ASNzpE+v/XMZt2vutARBJctY3G/raH8jTh
         l2IKoYZtmDwTkq0PGyVvWl22rZqVDlPB4AB+GtPttOX3Y9f6q7g/4ViO38r8Hsh/2qW7
         E+ZAtsh+k1tO8kqSqMTHsSRAxQIya/3U3sgKE8Rv508s91hc1j2aXoViObQeB725GS44
         CTZGNjj89zJfi/UUOyoelAKF6xEXvqZpuklHajzp/0wANY98OROMCn9TjewZFsPS3Cx0
         AAJZDW336Bfa73poonZEHK4LbRxUJY7fXjIJ54hDV6Gzt5272kgdKgp9Dl+mNDleMMnj
         ltDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5DzNmsGKabIiqxsuQFEwzfHh7R7C4KklYepK1ybNRcI=;
        b=zk1TorjAfDwzpRpBjGLs/kbIUY8lAALWzteTs/3kNuWHF8P+JoMav2F+5+TE2OkRsY
         c+tPlcCg6nUYGc0WzP3SUrg3nb3HKjaOtChPnCNeD9ch5KmlCU/IofZBRy29msO/h2MY
         UGwW3btUrFSzeRYMZcK/v4a/Y28XVR1yIv+EZ47pv96+ysEDdob9fo+urga8Z0DwVkfy
         5TZuAXsuIZXv+Ni+hDSD4c6mVMlekkw92hC/WpoE2oVWhAjkjE1by5uSh5hCbwGkTXq0
         gfdS95aTnp8Jrej0ONrIOfVxMFMhh8I0AULb3jqTPRGIu6CxUVCtVo8mfMBPF5hZrhSV
         w7RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JvaV8Kgi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id d12si13813pjv.0.2020.02.26.11.26.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 11:26:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id d9so150876pgu.3
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 11:26:13 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr356104pgb.263.1582745173398;
 Wed, 26 Feb 2020 11:26:13 -0800 (PST)
MIME-Version: 1.0
References: <20200222072144.asqaxlv364s6ezbv@google.com> <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan> <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook> <20200225182951.GA1179890@rani.riverdale.lan>
 <202002251140.4F28F0A4F@keescook> <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
 <202002251358.EDA50C11F@keescook> <20200226015606.ij7wn7emuj4bfkvn@google.com>
 <202002252103.B4BBF01091@keescook> <16822a0460e37e7a388217c63da8882d2904d8fc.camel@linux.intel.com>
In-Reply-To: <16822a0460e37e7a388217c63da8882d2904d8fc.camel@linux.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Feb 2020 11:26:02 -0800
Message-ID: <CAKwvOdm1qoKdq=Cp3nrYPR6oXkGZ32Hmh2TPVgatKAvDHk7q4g@mail.gmail.com>
Subject: Re: --orphan-handling=warn
To: Kristen Carlson Accardi <kristen@linux.intel.com>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JvaV8Kgi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Wed, Feb 26, 2020 at 11:11 AM Kristen Carlson Accardi
<kristen@linux.intel.com> wrote:
>
> On Tue, 2020-02-25 at 21:35 -0800, Kees Cook wrote:
> >
> > Thanks for looking into this! It'll be really nice to have the orphan
> > section warnings working in the kernel. And getting the ground work
> > for
> > FGKASLR ready will be nice!
> >
> > Kristen, can I convince you that FG stands for function-granular
> > instead of fine-grain? :)
> >
>
> Yes, sounds good to me - that way if we ever do basic block reordering
> or some crazy thing like that we don't have to say even-finer-fine-
> grained KASLR :).

LOL (I laugh now, but "never say never.")
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1qoKdq%3DCp3nrYPR6oXkGZ32Hmh2TPVgatKAvDHk7q4g%40mail.gmail.com.
