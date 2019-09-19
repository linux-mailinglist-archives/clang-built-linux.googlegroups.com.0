Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBT44R3WAKGQE353BQHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 981AFB7BF9
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 16:18:55 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id n14sf1489694edt.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 07:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568902735; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcYoMSTt/iTAwpBmWSiSWX7xRqfK11FPPsYHc8eYbY6DMsS4/4bkDOB6IvLxP2L3ei
         RPHwQYnbrnRP9XpmepjbKhWHalfF1n7Qc/8A3gsgFOV3XKMN32HoyFj/CViczbbGZr94
         UuNMOKyTlThZKdSgGTIdbtIEgufCslXDDv3Lp7NK+gwooowB6wj0nzbOOx5zqiJjvEEG
         inK37aMl/on4Xz1J79tQ/LJef4LW1fHAnZ2Aph+ViC1TW6LskNiVnxfJqnttISLKxBOq
         /SKxeVfpSvwrOm7XFfpkLTu47O+Rgb7lTqmDZvOeU8GTove97T1atrgoEZIWUwcAC32/
         gSbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sSjVDTM1ELgesf9b7xwjHpLxh4dvnTA3wsx2gEuMtJM=;
        b=edM5SUmseTDWfkZJioTddmK5SEhZ+7Vxp76LATEnslrKKKtpetnaur9AG5MVm9QfaC
         FMhMtdoeKZa0G505YU2L5vLf3mJSpEGDUUoNBiyMbFDViT8b3dYf2jKVlHwex3MvEMOu
         6NTTW2ovwLe5kaMXzLJ2aOmpBZYZn0J6m7ZZM7mtANQUCdrusLitK6XBNBHAi2tUnIhs
         yUcklhJVK1BU+xjIhb1PHgZQxqQBHzulRHO4bf8YWLQtsXD//6xxV0WQNpa4zLKwhfEu
         2+xazn7Yasju9bsgHgpeG0t37+i7ALH0P9xREPMBZSESMzKXWbG6QnOPtESlPUojVrQG
         xjFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Ue2ocIOy;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sSjVDTM1ELgesf9b7xwjHpLxh4dvnTA3wsx2gEuMtJM=;
        b=f6vzg73ifMhrIcVHI2TPMrK1loUgLZj6wTr9s/2hBLNi5kVgbtdozKbx28PgKMOZ8k
         3+sg0QLueFJOSpuQ/Wyf4sROoytLO2yiPr5NydSsQi3L7aMWekSuH87gRKDKTawaLO9Q
         Sk2ZyG6mYXNwio+1QRp8cGOJrRVdLF+WWiloKSjplGHO5dpVtjfRhHOvkZwzAHPy8U00
         QPGNdu8Ud3wXwfV09ICQPLJTODuF0sjV3BsuW3wkd83N1bJoAc0onpwq9qy9OVRghLqt
         pDTFvS2PkZb5+d9qfgF9fwau8IZnNhTiF64XcHln9h5hM62BtJuP/QeW4fiTrqxID/VH
         qqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sSjVDTM1ELgesf9b7xwjHpLxh4dvnTA3wsx2gEuMtJM=;
        b=T6hDKoEPbHTfqBFUKoQmUjCz+mz6GhVPq2qdsegTtXr+1KXkTq9VWKTrHGzOlGnlET
         vMBQLY2ZiUr84aqHicafR1bBxUWSoDkqPBuqfNqeJS4nrswfY5kMjJzkOguAnG1DVTfn
         jSXiIVqwoI4PlGbS5wMeHq57mLx/sIQv4Gtprxk5PfjDeVxQPEX3g1UlHYQbHwcGndV6
         ln0N179P38lNe8vWQtNL2PsQz9IIAG4Za4sTd2mttWcqpK28+QMGbhVzRfiu69pgSe/K
         Sc/uY3fsyK1VqCmm5/krsoMX4x85cGtn8fIm067+mjI7Bib5gFfyJk19Eh7NGEUDyiQ5
         w2Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqEHlcFYRsLZffAwWxxoAWl1UxYJHplkGb+ApDpnU4E8+x7j2g
	e2EcYUarxmHO5SsUZS9JNxE=
X-Google-Smtp-Source: APXvYqzpQr5cUiS50aQTmmgO7sRvVqRaHls+fLahm6Y4Jn58z9h8hxdk0f9BQXD8WHwvvPQAik5azw==
X-Received: by 2002:a17:906:d8a2:: with SMTP id qc2mr3525827ejb.10.1568902735285;
        Thu, 19 Sep 2019 07:18:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:4420:: with SMTP id om24ls780055ejb.2.gmail; Thu, 19
 Sep 2019 07:18:54 -0700 (PDT)
X-Received: by 2002:a17:906:d797:: with SMTP id pj23mr14590173ejb.70.1568902734881;
        Thu, 19 Sep 2019 07:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568902734; cv=none;
        d=google.com; s=arc-20160816;
        b=JCuj0sQtMneKaJZqhzysYOSbeglobmL+f4kuNJOFWoFNWJTpZYCaJ7UuJ+gdlhwlgQ
         wa7wZyIsG9LRcXJ0NuOSZ2+zCLzmX8wWPHiglWpbyiNrLIXcHSk6tJrt+CLo1Vf8NkfS
         aqpfpvSUkXoVokoCb5whPIqQWURpgACj789LcIUQDhVpoc9be7meqcB30+/kdKDoAWlP
         fnVubFcrx3Hf213M6Sp8hUlTv/YWCPqvgMW/Ev4fvQCQ5AzGMNGlSYAjkVoopxXpu5yl
         jVPaNqbYiIzzBMLy/qof1+UFz98td2xDVo2kgS8xlIsXY0C6LvAesoQW09/rCNbpeDmn
         /jGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=VJcWMgQlBXCDJq+mIxTwVnwKjmA/FYBDYBWzdA4+waM=;
        b=Dg8qZgfzKTEDw9tTdxHXOJUIeVfG/jF5KxGqfBEsqsB1+T/QWLkfu3im1GgecEjMex
         2YTAvDUwAcEeASGfGF7brQgW/SFopam9/8sh9Hd+X86+ZN/oI96y7EfqkUw/HaCf9X1H
         ClwX5MH8Eal4VtgnhtxcoVmS+waN7+0EdLHG4H0X9asHXakk3T6xNU8Vsf3AUzCoZlfq
         ucvPKgZqZ06h2F7N1p7i9TLApLJbQAseokly9rPam/ADKIziGukCQHlgbaOgQdc1cgyn
         RZEGEyOpWlRUNrjl/FrwfYphzG429RVUsCNOTsrTKnOYguBcz5HYLoIj5m/qauEPKIZB
         bQug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Ue2ocIOy;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id a15si156274ejj.0.2019.09.19.07.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 07:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id w6so2513945lfl.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 07:18:54 -0700 (PDT)
X-Received: by 2002:a19:d6:: with SMTP id 205mr5444406lfa.144.1568902734233;
        Thu, 19 Sep 2019 07:18:54 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id d25sm1582984lfj.15.2019.09.19.07.18.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Sep 2019 07:18:53 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:18:50 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
Message-ID: <20190919141848.GA8870@khorivan>
Mail-Followup-To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
 <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
 <20190918103508.GC2908@khorivan>
 <CAEf4BzYCNrkaMf-LFHYDi78m9jgMDOswh8VYXGcbttJV-3D21w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYCNrkaMf-LFHYDi78m9jgMDOswh8VYXGcbttJV-3D21w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Ue2ocIOy;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Sep 18, 2019 at 02:29:53PM -0700, Andrii Nakryiko wrote:
>On Wed, Sep 18, 2019 at 3:35 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> On Tue, Sep 17, 2019 at 04:42:07PM -0700, Andrii Nakryiko wrote:
>> >On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
>> ><ivan.khoronzhuk@linaro.org> wrote:
>> >>
>> >> While compile natively, the hosts cflags and ldflags are equal to ones
>> >> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
>> >> have own, used for target arch. While verification, for arm, arm64 and
>> >> x86_64 the following flags were used alsways:
>> >>
>> >> -Wall
>> >> -O2
>> >> -fomit-frame-pointer
>> >> -Wmissing-prototypes
>> >> -Wstrict-prototypes
>> >>
>> >> So, add them as they were verified and used before adding
>> >> Makefile.target, but anyway limit it only for cross compile options as
>> >> for host can be some configurations when another options can be used,
>> >> So, for host arch samples left all as is, it allows to avoid potential
>> >> option mistmatches for existent environments.
>> >>
>> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> >> ---
>> >>  samples/bpf/Makefile | 9 +++++++++
>> >>  1 file changed, 9 insertions(+)
>> >>
>> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> >> index 1579cc16a1c2..b5c87a8b8b51 100644
>> >> --- a/samples/bpf/Makefile
>> >> +++ b/samples/bpf/Makefile
>> >> @@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>> >>  TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>> >>  endif
>> >>
>> >> +ifdef CROSS_COMPILE
>> >> +TPROGS_CFLAGS += -Wall
>> >> +TPROGS_CFLAGS += -O2
>> >
>> >Specifying one arg per line seems like overkill, put them in one line?
>> Will combine.
>>
>> >
>> >> +TPROGS_CFLAGS += -fomit-frame-pointer
>> >
>> >Why this one?
>> I've explained in commit msg. The logic is to have as much as close options
>> to have smiliar binaries. As those options are used before for hosts and kinda
>> cross builds - better follow same way.
>
>I'm just asking why omit frame pointers and make it harder to do stuff
>like profiling? What performance benefits are we seeking for in BPF
>samples?
>
>>
>> >
>> >> +TPROGS_CFLAGS += -Wmissing-prototypes
>> >> +TPROGS_CFLAGS += -Wstrict-prototypes
>> >
>> >Are these in some way special that we want them in cross-compile mode only?
>> >
>> >All of those flags seem useful regardless of cross-compilation or not,
>> >shouldn't they be common? I'm a bit lost about the intent here...
>> They are common but split is needed to expose it at least. Also host for
>> different arches can have some own opts already used that shouldn't be present
>> for cross, better not mix it for safety.
>
>We want -Wmissing-prototypes and -Wstrict-prototypes for cross-compile
>and non-cross-compile cases, right? So let's specify them as common
>set of options, instead of relying on KBUILD_HOSTCFLAGS or
>HOST_EXTRACFLAGS to have them. Otherwise we'll be getting extra
>warnings for just cross-compile case, which is not good. If you are
>worrying about having duplicate -W flags, seems like it's handled by
>GCC already, so shouldn't be a problem.

Ok, lets drop omit-frame-pointer.

But then, lets do more radical step and drop
KBUILD_HOSTCFLAGS & HOST_EXTRACFLAG in this patch:

-ifdef CROSS_COMPILE
+TPROGS_CFLAGS += -Wall -O2
+TPROGS_CFLAGS += -Wmissing-prototypes
+TPROGS_CFLAGS += -Wstrict-prototypes
-else
-TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
-TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
-endif

At least it allows to use same options always for both, native and cross.

I verified on native x86_64, arm64 and arm and cross for arm and arm64,
but should work for others, at least it can be tuned explicitly and
no need to depend on KBUILD and use "cross" fork here.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919141848.GA8870%40khorivan.
