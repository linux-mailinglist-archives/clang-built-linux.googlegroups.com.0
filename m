Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMVJV6BAMGQEWND7CEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 488303398B2
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:53:07 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id e13sf11673984wrg.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:53:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615582387; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXksbrGUVfD3ELPdS0O6MDHcaJFd/CLiYe5Cj4l0cZ+Z8MS2ubyEeylACLLinxkkA4
         y+7fT8VPZMPNEZWyM6cknDS1F+iwPz0vYNKlR0q4qVg/f2V+Rbm0zIRdRRQrPhvsvyFZ
         favf7+egzTOe4x9184buJkyIhUPgfak6jI2zC3/7FiEAPTv5zcVSGa+mHu0B1g40opvw
         mK9kTXFnNxKHrvq6LZdgfUWO9OQvQxiIDB+0vhh1mGhz2ZbM2Frk6d4hgSSLXvB09BpQ
         mCnZ8xg90Xx7STJhF24uNJYITgCh4c2tmVTkZiDsg2TqZ2tLaJWoCyrDJipbKJRfS4Uu
         GPjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CS6iqJT4G3bIxgW59/tleV3nlinfs1YgmiA4nAB22cc=;
        b=oGbG6UUFO34z+gjKt9tcCpUFr/0adHp1X6v/tHh30Ik0xruZa88TQ30OCJ1h9F+lmY
         gJ9D4et08GhrAGIW6szzLA9m79vdYfpas9yCOCVvOpK3H3nrPT/SMJuflpseqWSP4Mh+
         f2D9ORbe9ek5X/F2tH9oycbgRtfVKfriCqHq7auZyw852aRwV41vaLeNhaq1mL1EuIdc
         fN7/MTl1JL69q0gAmBT/Cbh5LnR28Tx0yONkjMwCOMeoA7AlioqZulRKhuQFATQwpmED
         F/OkfP5uGfCm08BkI4j11Ggwh3PAB9rP7eB3m9QuPBz2nH0XpOEBQxq73b1I5sKB9+ZC
         musw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JPAqdux6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CS6iqJT4G3bIxgW59/tleV3nlinfs1YgmiA4nAB22cc=;
        b=fSz71GDAPB03gIb5iXZWpBinYDuZ9hMZEOmJlTR2MT5VB+kB30Qg9DOkwoapLcpCi0
         N+A9ZKYMYngJSScvLvWGcUVviirhHt+oxSnKbVseai9u7IbxLcc7u7Me+LpqOnouaX09
         akSKDsoCe9PMg7WGob4gYMQY4q8zMbp5anhE0hNO6LjhHk9RH7l/CxplqjbKsa3HInCp
         FKz3BgrqjbYwJ/1k12BKPzCsK7NIun8O+KMB9vK64Mbdoji9BSBUpN0ItZMikRzJy/F8
         o9GnTV2KioUfPpqQpPbeFjxBeA2Y7GqlAU/sIBhKvlMQg3k0j63p0Vg5gP0sjlpY/sJ8
         L7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CS6iqJT4G3bIxgW59/tleV3nlinfs1YgmiA4nAB22cc=;
        b=V8yTK+1usbnyKzXIy0KcyPHzeixLliq4qAkIMIFjsB5uQtSBqWmBd0tGqlpgcQ99Nf
         WsOjEb1/TkfGmwLQe4NrjQsaX+NbTB3eRt+dASs2d+efGiOkVHxfDw5lvJs3jvsS0nWJ
         Bk0OwjgYEpjOeJcE/d8QEMdeWklfGfcSndZkp8d1kmFmLoJYeQAStwj/VzByGaFgjO2x
         hxZTyWotwLDqDggPL2Kc3jLNVw5nUvVYij60tWkXMfKkOB0zxoic2MG0FpckUs2eifAn
         Wlqe/Zx/byWR5Xupfz8/FJ+OSwWY4YON7D8OXPpDxEW6qp+dmpkS/GmHisrYULJOQ49x
         iW0w==
X-Gm-Message-State: AOAM530WPY+yZh5iH/8XWUpiN0Dn+JpisWxHrlHgrxcYD7fWeiqMCgtu
	IKHshyfz9mIVh7knNXcy4EM=
X-Google-Smtp-Source: ABdhPJzvZeDROYVfh3zx/4/1mw9P+GLoDnM+LPaneko02X8qAxs8U4Uo6J7MC0lptzvHgQhgiZeKOQ==
X-Received: by 2002:a1c:b789:: with SMTP id h131mr14876763wmf.106.1615582387076;
        Fri, 12 Mar 2021 12:53:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls1149940wru.2.gmail; Fri, 12 Mar
 2021 12:53:06 -0800 (PST)
X-Received: by 2002:adf:828e:: with SMTP id 14mr15960398wrc.123.1615582386340;
        Fri, 12 Mar 2021 12:53:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615582386; cv=none;
        d=google.com; s=arc-20160816;
        b=YryzsRm/7lJO/QBmA9yZLkF5JDyD9swRdFqmtlMkmZdtxn64w+3oXNzUwrK48rpzOP
         VYmi8VhZuTgQzX6IARcnpyPYcoJzcfTT/EpYthK8/48vGkienQQRQEvF64jwy9fIzLjj
         crdNppfcBK8wNAE064i39GWjlNSAtR4Htt5i6wTDRhiG4/kqje60WRqHiFZOVszhqCo3
         8xySDFIRsyKHrN5FuCm5q4a/Gvg8IDtXKetk0bejnusoZUxcC2zFB45DXqcxVvznTxU2
         jbyAzrnm6IgJLp9vKJAt/zXlAK0Wx+E6t20UhJBYkvXD5ygobhQcpQHS5URv2sgrriNw
         9HLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S8dK+kdR+Ia9D858+IkNK4cy01vXdBXb8r7JBQS6iTM=;
        b=Tk2NCDyQ1ld/qxmUHF5oWUskDlPyHw1hENmk97bg8OKj6UQtDJi6PV/LdzOKFjsrDs
         CvqSn6LsLoDyIKmo/66zoY9uKM/nHh4Ggif0Frr1gLWtgIsPmC3GNX1C7BJvWAhfr75f
         HILWknTUMB0wN9XK9JANzxloXy+gCMt6sjtzqornyAvVvdPbvVSi1/hSyXGI/vfw30fH
         g4aWvpfzOt0uN5+rC1tz/IKnLbRqAC5rNVFg558QwcXfKiNTFY/q6MNL5N2BwDvSy93B
         +7SN7KZeJnUeF77/Ml8okTfjkiq9tQnP/pyoYjj81SJJj9ogYH0aymqflhCM0XfCwqWa
         WdpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JPAqdux6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id q145si281858wme.1.2021.03.12.12.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:53:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id y1so8967319ljm.10
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:53:06 -0800 (PST)
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr3405610ljp.495.1615582385619;
 Fri, 12 Mar 2021 12:53:05 -0800 (PST)
MIME-Version: 1.0
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
 <20210312203900.1012048-1-manojgupta@google.com>
In-Reply-To: <20210312203900.1012048-1-manojgupta@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 12:52:54 -0800
Message-ID: <CAKwvOdnD90DTS+3zMidxNiapeKoC_vUW62rdn1h7M9i__ieA3Q@mail.gmail.com>
Subject: Re: [PATCH] scripts/recordmcount.{c,pl}: support -ffunction-sections
 .text.* section names
To: Manoj Gupta <manojgupta@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Doug Anderson <dianders@google.com>, Luis Lozano <llozano@google.com>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JPAqdux6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Fri, Mar 12, 2021 at 12:39 PM Manoj Gupta <manojgupta@google.com> wrote:
>
> From: Joe Lawrence <joe.lawrence@redhat.com>
>
> commit 9c8e2f6d3d361439cc6744a094f1c15681b55269 upstream.
>
> When building with -ffunction-sections, the compiler will place each
> function into its own ELF section, prefixed with ".text".  For example,
> a simple test module with functions test_module_do_work() and
> test_module_wq_func():
>
>   % objdump --section-headers test_module.o | awk '/\.text/{print $2}'
>   .text
>   .text.test_module_do_work
>   .text.test_module_wq_func
>   .init.text
>   .exit.text
>
> Adjust the recordmcount scripts to look for ".text" as a section name
> prefix.  This will ensure that those functions will be included in the
> __mcount_loc relocations:
>
>   % objdump --reloc --section __mcount_loc test_module.o
>   OFFSET           TYPE              VALUE
>   0000000000000000 R_X86_64_64       .text.test_module_do_work
>   0000000000000008 R_X86_64_64       .text.test_module_wq_func
>   0000000000000010 R_X86_64_64       .init.text
>
> Link: http://lkml.kernel.org/r/1542745158-25392-2-git-send-email-joe.lawrence@redhat.com
>
> Signed-off-by: Joe Lawrence <joe.lawrence@redhat.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
>
> [nc: Resolve conflict because of missing 42c269c88dc146982a54a8267f71abc99f12852a]

^ Isn't `nc:` here supposed to be your initials, ie. `mg:`, or do I
have that wrong?
https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
doesn't clarify.

> Signed-off-by: Manoj Gupta <manojgupta@google.com>
> ---
>  scripts/recordmcount.c  |  2 +-
>  scripts/recordmcount.pl | 13 +++++++++++++
>  2 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/recordmcount.c b/scripts/recordmcount.c
> index 7250fb38350c..8cba4c44da4c 100644
> --- a/scripts/recordmcount.c
> +++ b/scripts/recordmcount.c
> @@ -362,7 +362,7 @@ static uint32_t (*w2)(uint16_t);
>  static int
>  is_mcounted_section_name(char const *const txtname)
>  {
> -       return strcmp(".text",           txtname) == 0 ||
> +       return strncmp(".text",          txtname, 5) == 0 ||
>                 strcmp(".ref.text",      txtname) == 0 ||
>                 strcmp(".sched.text",    txtname) == 0 ||
>                 strcmp(".spinlock.text", txtname) == 0 ||
> diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
> index ccd6614ea218..5ca4ec297019 100755
> --- a/scripts/recordmcount.pl
> +++ b/scripts/recordmcount.pl
> @@ -138,6 +138,11 @@ my %text_sections = (
>       ".text.unlikely" => 1,
>  );
>
> +# Acceptable section-prefixes to record.
> +my %text_section_prefixes = (
> +     ".text." => 1,
> +);
> +
>  # Note: we are nice to C-programmers here, thus we skip the '||='-idiom.
>  $objdump = 'objdump' if (!$objdump);
>  $objcopy = 'objcopy' if (!$objcopy);
> @@ -503,6 +508,14 @@ while (<IN>) {
>
>         # Only record text sections that we know are safe
>         $read_function = defined($text_sections{$1});
> +       if (!$read_function) {
> +           foreach my $prefix (keys %text_section_prefixes) {
> +               if (substr($1, 0, length $prefix) eq $prefix) {
> +                   $read_function = 1;
> +                   last;
> +               }
> +           }
> +       }
>         # print out any recorded offsets
>         update_funcs();
>
> --
> 2.31.0.rc2.261.g7f71774620-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnD90DTS%2B3zMidxNiapeKoC_vUW62rdn1h7M9i__ieA3Q%40mail.gmail.com.
