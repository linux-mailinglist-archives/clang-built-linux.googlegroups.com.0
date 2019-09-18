Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBZP4Q3WAKGQEC7PFZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE80B5AC4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 07:19:35 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id s14sf7002999qkg.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 22:19:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568783974; cv=pass;
        d=google.com; s=arc-20160816;
        b=ItocWJDa6etfP577N+lU2z3JTmr64XE0M27RhZJqNBAzElf/BBmTjt660Skt3/lH3q
         qN5zayT6GxyUa73416XPbeaEmjxlFFSkvwBGCqePa97vqryCHcujhaazeZypwBnxehU9
         Jm6S/c08PUo7mYRwUkvBtFTu+dT+Ugc0cILPWIdldtopK/owORoD00jMF4KNdEWHsN3d
         RmdiEg3xjpFyQLY0Jth8nqPSUia7sdudWaEd99b7QpiIjgAgYortkXjeM0TA7+j2g+n6
         uAVjmIJ55ooPABj7L8Bzw/CYIZByw+V8ABkskpk61PGYHq0hjpZMSIOH54bisyacrjBh
         rxsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TkCez1DOhGfzUvlqtFUDfHvzTs+zFAmkejDCp8L+6mg=;
        b=i2ONf0IUDt7MOq1JotvLlE66hni9dHBTnx46ORAz999m3fd+cbreotOtFRPWaYmFCf
         bD92DjY4/srrJEC0BwlevvF47/wLUtSNNmNmbap+15JS3zviwD3kyxu68smO+H8jRQJH
         PJ/iaLKZwGSRTRDmQajJq+3HuK6/a9w0bcZ87TaonGoxUHwzThe5/915J6UAerEakUUU
         1YZJYGMVQzst5zNdETbO8mMZrTKZ0o5BER8WkyAbtvXs6JX35ZCTMs9ew4+zxWIMs9cY
         UIS942oNStWttStvv7ZgYQMJe/Stx/IXR3a5wZ3NBAKkWax4jpAA0NJaBwS9X1QLNSXt
         3POg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bcPs6Rjq;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkCez1DOhGfzUvlqtFUDfHvzTs+zFAmkejDCp8L+6mg=;
        b=dxLCIKO6Lu7RASz/OdVdCmQN6GaMt30KBxiIeKqGa0lThXran+/1JQOt5c2NObk+iu
         KmiZPPaKFJEWvgM8Vv1qYdCiGpzC+yX/DDjdSrxAEpnf2mKdwRXUHwQ0qE5M5EDEVSgh
         P0k4pkvL+zEbdCAWt32WOmTp9L5PPtKGaGaOwlHtHLc05bSpwk/H1cLug7MyZsOLu+cV
         HDD0/Ye6snuobUjYsE8yx3BMI3mpbrwyGV9FCjNjXf/Q1mmIk38BuptTGQ491WLhz7tw
         e16beC0NYjkl0obwjupG65V53XLHVhaGSwXbXfj6+Ez1iZ9hmaz23QeQcEvFulhhH5tN
         824A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkCez1DOhGfzUvlqtFUDfHvzTs+zFAmkejDCp8L+6mg=;
        b=K/u1BEbbrnfBI40HZjskaPdS5HTFxJh4q/bs6buKIpWIKhjPz7+7onPLsj0Xj8IeTf
         L6LlDsqxSjiwCsgvt3pl2TdgoEVg9mAd1c2kAIEOvqOnYen6frBWjyM9wgMMQj5KAJFq
         IvVra3O/IEB/y50gYXdaUq9Uu95Y1jStVJRTEMym+nTJ9JnaM+1Tu3VcTS2DXumfCVxC
         zXB+zGKpZnNHqj4zljyWJiclv9pUzBct9eiExz5YdPtAJJ+4GlzPQ3iSpIsYSf69ohen
         7ogg+m4RotSGI+1oYDUkKh8oF3ijMD+YCQH8Ijj1XzwTa54Th16eIfwxD4PufL63p3hJ
         YI8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkCez1DOhGfzUvlqtFUDfHvzTs+zFAmkejDCp8L+6mg=;
        b=ZwQjQrMaUpvLtdzGeDyOUkYQCReQMfiQep+tmltovLYCG6Vdbm+teK00l+oq/K3daL
         QyNsybHbNS+UodIJ1fIveq7fb7VXkPtz9Eociod1m1voR77ybepSHRMZZEdpVxvJrcxq
         FKCme01ww0gRwbtgnEayK5yiDJ7hhIcpJxH+4cZP7yBHDzKVqBhmdiO3FkLMe+oePvJu
         mBxCFtlkCD9OomSElVHH6QghIt50NzBhXmXDbdWkxf1qjXx7wr1TEp9zPu6JsLqlSuMD
         BCG0sv0rV4P3tBqz65Twnn9A1CjqOCTKxTTN9gBRzIbONdEphySuNOjjRAw9Ki7ZVjpH
         DeWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUvKoN9UiaC2TLTc2KUlpXizuJZlKPLGSBaCkEtUeL+8kd+Xxvk
	CCJmdXHyQMzIETTBFIer/4Q=
X-Google-Smtp-Source: APXvYqx2AZBfmELb25QkFbGKmqcMBSijY0Dx8TOfib/BfJhAxi7ecCpdti47CVM9tvnHJr/VW3qptA==
X-Received: by 2002:a05:620a:13d9:: with SMTP id g25mr2262567qkl.230.1568783974018;
        Tue, 17 Sep 2019 22:19:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:11b2:: with SMTP id u18ls575034qvv.16.gmail; Tue,
 17 Sep 2019 22:19:33 -0700 (PDT)
X-Received: by 2002:a0c:e407:: with SMTP id o7mr1771217qvl.92.1568783973673;
        Tue, 17 Sep 2019 22:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568783973; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZ7U6sDh4tnUH+HMfvX0DqGcYOx9Snczb/04KRiUhHAoCDx4rLLPl3VRCtFZB1UBy0
         yWaEReGGK2Rq0nBYj0kyZ9lv2b9OgYu3PeKxDdA7Cau2PVFRG5xddTG3Mp/L4oFW8Huu
         1qvsG7WdX5Zp0lO+JRoJTv2hUETo9KyWH8wyiQYXGwELwZw+QHWm6v9qGvatW2Khsdyy
         2ZSkZU+vW+joJHWL/ICxh8GFIdYmPpcb4q4CafcLJBzLsY9DsWGpm0cxyMVwJiLT6tHU
         qaYpirodnWmW2HtIPoIxnw7c0PIX8ltSOkARrLvEZ2utzY3hCH6s8Bf0iYRNgsTTX+UY
         qQyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Xo9zYrCJEPVHMiv3h+aCm77vZarT+/8uPX2EY63h768=;
        b=Eyqyvp2SZXmPwZkEIVfQNCFYUCYHmcTnV6r/RQ9W/x2HEW1g3tCe0Cq2mvctq9ony6
         MFAnQ9wfDaUU+PKpgAHX0K24bGmOGLkZDeNDp4g01z8tazAb0fkr29xdclDF+GHC+f12
         +0irq5qxrSYZOz++FVlY/SDnffRq1pMUmmGOKeo4mY8r2sIDGhTCbaxkyHsHk4ZkgKje
         7YnQ7bl44IJT2T0Mcw0iOMIkpOsAhOZfCF3IfRw7gwYCODe6/catg06v1JXKjljI2WI0
         DhqbVYGaeYm1GbZrd0GBx7CUY496RSKWRhbeFaYwE5tcFVV2fK1sztypjOwpxBteKQXp
         o82A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bcPs6Rjq;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id v7si438743qkf.5.2019.09.17.22.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 22:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id j1so7465920qth.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 22:19:33 -0700 (PDT)
X-Received: by 2002:a0c:88f0:: with SMTP id 45mr1845990qvo.78.1568783973290;
 Tue, 17 Sep 2019 22:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-12-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-12-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 22:19:22 -0700
Message-ID: <CAEf4BzZXNN_dhs=jUjtfCqtuV1bk9H=q5b07kVDQQsysjhF4cQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 11/14] libbpf: makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bcPs6Rjq;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 4:00 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
> correctly to build command, for instance when --sysroot is used or
> external libraries are used, like -lelf, wich can be absent in
> toolchain. This can be used for samples/bpf cross-compiling allowing
> to get elf lib from sysroot.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  tools/lib/bpf/Makefile | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
> index c6f94cffe06e..bccfa556ef4e 100644
> --- a/tools/lib/bpf/Makefile
> +++ b/tools/lib/bpf/Makefile
> @@ -94,6 +94,10 @@ else
>    CFLAGS := -g -Wall
>  endif
>
> +ifdef EXTRA_CXXFLAGS
> +  CXXFLAGS := $(EXTRA_CXXFLAGS)
> +endif
> +
>  ifeq ($(feature-libelf-mmap), 1)
>    override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
>  endif
> @@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
>  $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
>
>  $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
> -       $(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> -                                   -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
> +       $(QUIET_LINK)$(CC) $(LDFLAGS) \
> +               --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> +               -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>         @ln -sf $(@F) $(OUTPUT)libbpf.so
>         @ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
>
> @@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
>         $(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
>
>  $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
> -       $(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
> +       $(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@

Instead of doing ifdef EXTRA_CXXFLAGS bit above, you can just include
both $(CXXFLAGS) and $(EXTRA_CXXFLAGS), which will do the right thing
(and is actually recommended my make documentation way to do this).

But actually, there is no need to use C++ compiler here,
test_libbpf.cpp can just be plain C. Do you mind renaming it to .c and
using C compiler instead?

>
>  $(OUTPUT)libbpf.pc:
>         $(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZXNN_dhs%3DjUjtfCqtuV1bk9H%3Dq5b07kVDQQsysjhF4cQ%40mail.gmail.com.
