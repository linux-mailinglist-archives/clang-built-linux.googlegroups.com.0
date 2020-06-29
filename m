Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBC465D3QKGQEWE3QQ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AC020CFF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:55:56 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id 59sf12079459qvb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446156; cv=pass;
        d=google.com; s=arc-20160816;
        b=PK1/5VfkO7hwlM8vBkAYOIPok8p+d7d+3wSufCNOYzlNZcnRSrfNbjK0EOi8grrkY8
         lMt5HhmxfZZGmE0F+uULy76iVVtg9KyfMZcaW0KoZ3i0J2xRwHk70YQxUk5QUtjJcxuP
         zGow6B8dEv3iyIcpHxOQVSvFxwMcJWhIKQErJi/JNxiF/oEtO/WtN/34i28U1W+jfl0g
         FIybwbrcrcF0lpkbk4mDBHr2zucgQnZAb5hn0Nl496/7sR90E4NiyfXinE/XaOGwQxi3
         5Doax9OrWsWFIm4YvXqRTbxBfcR0luReJKQ/RP5h5d9Ed3GAG0kJE213SVqrsgVGOWnq
         pleQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PAmJNMslPt8AxTd0+uzQgdDeW1XSkC2hSXxzFF3bViw=;
        b=fVWm1zEjvP7KgHp8lC+KZ0mkbe1hUpQo4cTEKKBBY66eaxPNPDpGpLvA5ZQBzLZFTP
         otBIGjVJymoWL0e22utjNBrugLX1pM+PWqH4qJDdpvIi4NIT240uq6JPJ0MBKxTGA+Ia
         mD8vvqk6FtnFMufiJxFvJA/94iu+Mx8vrY123eu5XBGS4h74rAmPm2NpQcyE2xkHx5Ax
         YP5FPKg71LExal/zhyUV6Ty5e2jNHU3Zip9e+myr/vivkcREHs4zTXEAmZn/ou55sY0I
         r4yBlLpbgOvnj8cqTsDu702LEYviKtfvkAfwgNdcrkXhWUW1bGnrRTosGAtBPUzBOWSK
         EGkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oRUZOeRa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PAmJNMslPt8AxTd0+uzQgdDeW1XSkC2hSXxzFF3bViw=;
        b=JHb8N/KDtLgleYuO/l//Ujphz4636SLJT0us9EG3gV68nCq+O2f8ZvIK2oGip1VIi1
         Xw2vNJjRCvcMlq1L8VWZmpp4jPrleMkx7z7UBLyHCY80ER0eNq2oalQ6SCEU7m7+gQ6F
         zoPP3DVWCWxlvPZ2yKvoZR+3sKDEsnqrUuHfOpyU+VIzLwFlRptEnJxxc+hqxrR0gNqT
         okJ1UIrrlOZDNKVLPmfJpG2HQoCzoz2TCmdnXQJd1GrrgZjgkFNgfHhlxM9GRwZ9eRBL
         T2jmCerMR5Rb+Gxm/b2nTuZI/DCJhZettTFV3NoY1RKioyWvbqMtRB+qYkuAHj9E0av4
         LiEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PAmJNMslPt8AxTd0+uzQgdDeW1XSkC2hSXxzFF3bViw=;
        b=adCMF1hbG83GC5X0wX0biTsTzu5eq7pubAJZGJCrEYvuIMiyqPthHppLazpbjht9ng
         xCm8aScjPZd8AYENVcsZX4cFh12tu3uyxAtGmZZ8hU71hNA40SWYeyq5wDhX92KP3QNE
         goApcmbQpXdERfBY0X8qr5UyJ0pdFxqqOQPvoy0BOJC/1UiOXBBaNNVfgFVQ3wyZWbk6
         F+RKOrFtR+mGx4fbJLY7Aw9e2bcUwTvpuWtqOHz1HsmGO0+Kd/mz9qjcq8EHDwlHT0ff
         /xf4iURz3/sWFgJMK0cc5ChEonBcj+c7AwkyDSu9jSEi3ZyRxd8NZnL44h31Kraxk5Zq
         3s7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VTJVawQt2Bq86MTC2ZS0dk0h4nYX0CkUSKwuDjVD5ZcjTlYlZ
	bM5RGXWSyMb1PcUticnX3FE=
X-Google-Smtp-Source: ABdhPJxk/jSvL6ln7/WL7uB3cUzd8ppDdeDlvcTsCpsFpcFquawxkiJgMBg1f8d7rcTpR/x5oYVtXw==
X-Received: by 2002:ac8:7a98:: with SMTP id x24mr16652928qtr.368.1593446155958;
        Mon, 29 Jun 2020 08:55:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b5ee:: with SMTP id o46ls2675716qvf.8.gmail; Mon, 29 Jun
 2020 08:55:55 -0700 (PDT)
X-Received: by 2002:a05:6214:3ec:: with SMTP id cf12mr16128312qvb.251.1593446155714;
        Mon, 29 Jun 2020 08:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446155; cv=none;
        d=google.com; s=arc-20160816;
        b=SzewfDrh3q0UFKXdeusVdEOM/lO9825/IBrlaeUONLlJiDQboWHiuuNIORhLh/+n43
         5MOf/fi1MTBQhWIzL+kW/b3bEAC2UdCMoy3zO9pbr7g5U/6fY95z+a6HyMxzIWXvKZFa
         sGHUQdbXVQlBmyK95Q3Ympu/q/Ro+twV06Hj/eFdooJM5lBN86bhRUqnoRgrO8sC9PYb
         B7kFAwYrYZ3EL5oeDnT2zTs96c1MCiU2hQHFBATye/YPZt3dhxyCpAA9LM86Yb6hw0GM
         ipqjFU1a7XbsTghyh8wAsminCy/BNPVIVDiDnZFOY6Y2k+mUvnJ9nkuw6sIBR1Nj3qSw
         vLSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8FZDkBiuioOBRxwHsKCkUje2d5GjB8iXiN+bbHKyAe0=;
        b=EgUgWqdcnws94ufNInNmqO/4C2E+wg3i/4G+9wYDj7ZxvpQZ6FwZaknW0OhzdfoFDl
         RCRwm0jWWCi0KID2MIWqNblPKxbc0kBVR7gqK4VFIsQLhXr8AK3zNv+FUgdYHxFQ47g1
         arxg0ellGRoBb+A+XryaRB+8vKADJ7l0MSdQvHrPtpsR3BgMWNzs2uVnA9CXeKkASYpW
         MRiH1votDY6t3YFtjnE5O4qvt3tRD+9MZn87FR2F1jYNVB4+pt4mxQpmq+NRhSMBJc4Y
         110wBHyatWvXV9nZRJRlPCsSOWQBxG5Nplts8Sg8X5wW1kikGcNtETsOmHsADGGBz7Xw
         DAgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oRUZOeRa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id a72si7474qkb.0.2020.06.29.08.55.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id o22so3146249pjw.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:55:55 -0700 (PDT)
X-Received: by 2002:a17:902:b414:: with SMTP id x20mr4523246plr.143.1593446154911;
        Mon, 29 Jun 2020 08:55:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r17sm167810pfg.62.2020.06.29.08.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:55:54 -0700 (PDT)
Date: Mon, 29 Jun 2020 08:55:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/7] x86/boot: Add .text.* to setup.ld
Message-ID: <202006290854.CCFE11C@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-5-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-5-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oRUZOeRa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:09:25AM -0400, Arvind Sankar wrote:
> gcc puts the main function into .text.startup when compiled with -Os (or
> -O2). This results in arch/x86/boot/main.c having a .text.startup
> section which is currently not included explicitly in the linker script
> setup.ld in the same directory.
> 
> The BFD linker places this orphan section immediately after .text, so
> this still works. However, LLD git, since [1], is choosing to place it
> immediately after the .bstext section instead (this is the first code
> section). This plays havoc with the section layout that setup.elf
> requires to create the setup header, for eg on 64-bit:

Eep! I guess this was a linking case I missed for adding
--orphan-handling=warn to my orphan handling series. (I will add that.)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290854.CCFE11C%40keescook.
