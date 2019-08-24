Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3XFQTVQKGQE2DODCGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1449BDC7
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 14:51:58 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id u21sf5252189wml.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 05:51:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566651118; cv=pass;
        d=google.com; s=arc-20160816;
        b=LI/EaeePI3fUS/7rBuA4iX+KZpirYcfvs5E0ckyONBMV5P7nsYkqk7BZIFBS8GlGRP
         q6GFZwQRAlsoAafSG4NOGq++HpRsC7xSFn2FPib2W4UwhWZFdZM6pfm8U94fXT+w4mGU
         7axK233W6h7+crqjxumXlsDFrI9dMRHQVfmxDjPF5LlYV0Vl+SuCooxd2hp0TlcAVwVY
         r7/KeoR9Gzrxu+qNnGck/aCvsfHdZBxzxYwu9DG+mKRKCj+3tsmzWftoXlhv6v3WZNGY
         cYCeElF6/8spifowwhpmdNnPHIfTRPwk5Ww4jgE73AAHqL4vGa/xYzha5W/0RnRAe93g
         nIUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3ZTCJAnPRT/HULu6OJLvpiDaflMwEULvR6O0typ76ao=;
        b=wYOls/D4Z6JTsE+kWBpd8Oj2YBJ7/BIRDY7aaQESSkvAJNLq5NM99JKovJM1H7/7if
         1Wu2l7ayd0q5qyt0zduJoyA5v+2Y0lj3PvNBQLvZNdAeZGRVcSSERexXRy/tHZD9vKp5
         QyKNDNMzYLduFHzIgTcSP6yD1YPUKBRZaokHaRqiyN77bo17/pLHiUuWa0gpsRoytuSp
         UBv7HnSJBswWt7xdVl6Ym36PiF0g6i+STD7RwQDUvPlBi1n9CrkvtqQcupOUmGhpJXx6
         WITsXGnane/DVONUIbweichIxaF2oXBonDGbv2Ps/BdeSGCy7UA/AfqQ3Sqhz5ZYIc/D
         oCng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mjNQ/LdS";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZTCJAnPRT/HULu6OJLvpiDaflMwEULvR6O0typ76ao=;
        b=hVoPAgk9cex/rqlKXgVwVd/8WPyy7Dp0dGhR6b19+MzMftfGDmgwXEF27Jsqng9VeU
         M9g/6nKaDlKeNAXxLtwgte6BU4WW3SFvC2RJzMLRCLzrtGEf3mB7CmFVFUwSZPbuvWXB
         ZBBKMVxxtzWCV/Jpa0up2yG683ORcUr/9iOPmHobnoJpoZVZj3k53wkR8HbnVjIdUylO
         6jgoJeK1OyH0YM6jHlrDbZpg7J1jwQXsex8P1resRBwuHukfgtK0k5DD4v6hXmjroQqW
         RsJW0scRtR0LdmM9qTyEAKaP+14fC+FwA2ib75v29DvJ968mpm1vJ1B1L3Gt8d5ZDKnB
         +rmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZTCJAnPRT/HULu6OJLvpiDaflMwEULvR6O0typ76ao=;
        b=B2ShBNiY26mA1z4K7qHuD+d/038zlg/iEMaWjfYupTtZY5YVghBj0tBOEUBwxhxqtt
         T0FN4chy/06NsouDdbzTrSVuEAecccWxT9emAq19VksXKiaqrnvOH4G09th6nswu60f5
         usJRNAbnvfuEUZTTNH1Jsgs/xNkHDYG7EkDW6NTW8Crpnt+tLcNGfj0cJrtlEli8Golj
         U89kjcrwxijhI9jCQ1H8C4IhlZj5CEOH1K+cIP5mviaxeqYN84tr729r9G1L/R6f8uGW
         ulUPgeXr2Vd+RhfVE0AJ+jxsj7rHKJBFJN1/TgH8YKvqiHYU/InySGb1vTv8SdLtuJSH
         G5nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZTCJAnPRT/HULu6OJLvpiDaflMwEULvR6O0typ76ao=;
        b=Hv0yPo5TXMfvFgULnVSUy8iaXw2k4z86rRBbi8Cw9g6BErM9vbjb3uY7NoMuGpNoU1
         ElTp4xq63EHKqd9vLdldsdFuuAwU8FzqUl3rXWRKn2OFq6PwzhJAUu/QIJeH/xEt7ln7
         2mGISV7f8YDcqYe/1/pD/i5AiuuZx5jgVkNMgRrYf9Tz/IfWIiMQiLPCHI1hCk1drGpL
         z9uWIgOfHvXDN2AbRoD4hgiKEjIhCtXKB9JMCxSo+I3rB6MAfI+IJ/fMNLcu7ZjpQS7p
         M9O9/b+4d0ePRjBC2IZkUqyk3hNZcYpy+N62SfTM4ehIcQDubs9dYnYImMpC26N4QGOO
         2wnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURWq2pWbVViNfwdj4JYHcTfSpqhfegCV7jOmjnUKoT0DUUl+7h
	wJn6GMWXWrwtxiasxe1To2E=
X-Google-Smtp-Source: APXvYqzIqShDnCXi+Db1+iO2l4V9b+VBDSB9dELjKnA/ut/cc6MqrTD7LVnTTIX77K9OrjOMBxeM0w==
X-Received: by 2002:a05:600c:2245:: with SMTP id a5mr10888308wmm.121.1566651118275;
        Sat, 24 Aug 2019 05:51:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44b:: with SMTP id l11ls4571666wmi.0.canary-gmail; Sat,
 24 Aug 2019 05:51:57 -0700 (PDT)
X-Received: by 2002:a05:600c:2111:: with SMTP id u17mr11379702wml.64.1566651117719;
        Sat, 24 Aug 2019 05:51:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566651117; cv=none;
        d=google.com; s=arc-20160816;
        b=pQ8UNslTyBixQuSQ017B07K/+SU/dvOObzlGl5epRdoAkBTsz/jO/F6Dip6+okNSuY
         Yllv9Hag0tN2/WajIzziVGS1L1EYgR170ZEIx9EakIW1Tvrkbzw32woRkGlaHeBmA0Zb
         X7vGHQy1UQyIAWWJyNPhqE2aP6AmEp8p2rwfNr0VoCciSZx2T9EHCuz85Sls2ZzLcekz
         20OC9t3y4MJrZ1u/vEbu8whcWj5a8eUgjA+U74EV9LldTlAkZBwyuBnMPCC+M1/LgHJG
         e5zAO4qvc7r5rYzhV7ikfrSLri1XSUhxEpJOnG9QEwvQHB2Kaslzap4FYQ1NvAWae1x6
         xOgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YWjQDcR3SyjBjxbrtuLUq15ebNFkva/QIGban7v8NSc=;
        b=wXQJeytUfLdnUfHqhxf6JHK4ItCB7e/nERRrTFJ+G4MRSpkCrSsMwRhTNmQx2eip0A
         t1q/dHs50MtFvuch5vz9NZ4RFGqdtVlZ+VbL3XwXI+mnoeKOF46f+Y+mKsaXiUvEXPIf
         G9KZpk6MwNRmL07P6WCN3F3u6mYpEU3J36lPbRSTijpl6pa16jFGjbZ52mJO0JWbVYNk
         TKBtx0G+ui8RDGAEdvWP3NCPTtu67kyl7ROJSLqFsl9B6C3Wlu/i6G2JHtMzy3aQ710W
         s9KEf12DB28yB96hOEp/KYHKn5OILzwgQDP897AoFvNCk76mcaETRbApna1o7RaiZTwX
         go7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mjNQ/LdS";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id e23si183292wmh.0.2019.08.24.05.51.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2019 05:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id h15so11201424ljg.10
        for <clang-built-linux@googlegroups.com>; Sat, 24 Aug 2019 05:51:57 -0700 (PDT)
X-Received: by 2002:a2e:9d90:: with SMTP id c16mr5739562ljj.221.1566651117285;
 Sat, 24 Aug 2019 05:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-14-ndesaulniers@google.com> <20190813083257.nnsxf5khnqagl46s@willie-the-truck>
In-Reply-To: <20190813083257.nnsxf5khnqagl46s@willie-the-truck>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 24 Aug 2019 14:51:46 +0200
Message-ID: <CANiq72mXvuVdO2i9gobmh9YeUW4bhe7YnqQc6PaZrbqua1DoYw@mail.gmail.com>
Subject: Re: [PATCH 14/16] include/linux: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Hans Liljestrand <ishkamiel@gmail.com>, 
	Elena Reshetova <elena.reshetova@intel.com>, David Windsor <dwindsor@gmail.com>, 
	Marc Zyngier <maz@kernel.org>, Ming Lei <ming.lei@redhat.com>, Dou Liyang <douliyangs@gmail.com>, 
	Julien Thierry <julien.thierry.kdev@gmail.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-sparse@vger.kernel.org, 
	rcu@vger.kernel.org, Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mjNQ/LdS";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Aug 13, 2019 at 10:33 AM Will Deacon <will@kernel.org> wrote:
>
> -ENOCOMMITMESSAGE
>
> Otherwise, patch looks good to me.

Do you want Ack, Review or nothing?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mXvuVdO2i9gobmh9YeUW4bhe7YnqQc6PaZrbqua1DoYw%40mail.gmail.com.
