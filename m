Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBY6JRLWAKGQERBWNJKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 013FEB6EFD
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 23:43:01 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id 2sf1057717ywj.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 14:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568842980; cv=pass;
        d=google.com; s=arc-20160816;
        b=bbN2gn4+48dKokJvgK3rNy5krj+P9nP0G2sD5fKvtJTWPFPaUIfBY3Cpl7ZBNMJ+VP
         wxCnmAFJ3OaLXgLZv1Uxw5IkNFaeAeWZoIailpxALfM2qVw1OimBIMlIprflaBMDJgYb
         HKLgwSBr3K3UhwHeOzRoKchI1uxxVRsnerOzsQHWM9LtnOWrNY1EYLVG0XvtFLb1MVRu
         lMj3amZ/1SexW1Jwq4IaDSfdrNCPgiNBFeCl5LGYVSlqCIqsh9g1yUvbnlMdROHU2Z6R
         MaQTWkJ6tDBFN/SZHBW0u8PqYCv/EmcgAGUlV274qzQMPsCUbqjq49Iw6clRGwrZJO0j
         ecGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=CJCwTQEKB0vOJjmFgh/NnIGwe0D3jsyjQrT4IHJxBpQ=;
        b=D/beS0G3VlPXBPAos0cq2Kzwtmr+hy5LwbMjMEXqvMyOqKv8KXyai0l5qvSPP1nTSn
         4n1mD27Oob7HGjRNkH885rayRg8Thc3989fZ0Yl53wYHIIZ/Sonz8bL1qEbeCZVxVLmZ
         pKqjjwiilAO+2yMxzTbJc+QpNFI4UNu+1VvPJ6IEgUH22CK4jSyOcR8bw5lzVgj7jT9Z
         LOlse7gsyzdtnfR/IXu/xjx1lq3A8sI4rR3uQ0afhhDBNwYySxCtFoBofhK9Why8F7SW
         Hp5w+OFcX+NxrrDyPgH/SBluphLfCSY0l4uG07ed9Wmd4coZYO2aGGC83o3jAvGthESo
         v9kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0USsfmH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJCwTQEKB0vOJjmFgh/NnIGwe0D3jsyjQrT4IHJxBpQ=;
        b=DKFoV+ICYnWeSZ/1tFCBMyKqsmmhhy96kzVMunI/i6k1oBR6hSpA6EElEjGNpIZMHG
         UAI+z5kRLL/AQ3OlY74ZcMN5YU5RGK9IllsLhgeq6LbxC4q7dLyXtB4Nco2ZENz/Xgxd
         ENYjuBraO+0rTMp8GzX3OkoHlY3kYp1HWo+dRqFhLNi3nL3U/Z8jpWshfHSW/DOwuhKp
         rnUWIBXq1rBEnrrSxmUz1OrojhX4X9GgJcesFnnzQkU5nYslnMX/11xSRekjc0zmVkH1
         qEV0sr1AHcjVsAic5V3vdXqNchRfx2lTHmpvyjPWRBB/Evc9Awiwdb0SB7HJ7E3t1Ndz
         KEJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJCwTQEKB0vOJjmFgh/NnIGwe0D3jsyjQrT4IHJxBpQ=;
        b=daLOpiAkgYCCjGsRtp97TFo4TuPD9rPFoIKf0YUy4HxyRzSvnwHb9gxItAigBRRAEw
         v8e8HRlxBn3Oc2pRtNK8H0r9ozSk09uBMlvMQXlMcgalymkyoJKbE5D+y8F/rmW9egJQ
         onnyGvGWebIGyZILOaoQvujuWJ80B6yb3L28LFDZqtmu08RHEKPzuMvsHS7afP02zdZ2
         oXkq1aFsYgkQaCiyr6KY3FcFV4d3xouDj/v4rOCmljyUKbILwd+BxqRNP3uyC5CwiKGS
         waBTrDRujBzvRtkChid1NsLMNbF++0ao1Pea/TSrx6XINHSA7Gdc2ukCMm3uCtcBMs4w
         ijCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJCwTQEKB0vOJjmFgh/NnIGwe0D3jsyjQrT4IHJxBpQ=;
        b=sB1R9Y8EfEErfyLsaWNQlN8DPVaE/jDuTu72VzkMxyck2T6MW2h0mDv+WLWsQfrA+u
         Z/DDmOkZvnSjRbEIQddUKYRVWY0PHNlB1i+QZzoA2IogDeVko6ATQCZXC2WzaKEJtWLF
         feya/3vnd0vf56k+oPPNXorUm8MHQPZIWeMA+H7qhtheXeQbU4tMjCbpjG6h0xoAYr/v
         wWbDPu+AHkzywk0UVfxZ8h8yQWDZSm9VV/Ls5Mt/K9+TzyeLAXvL6Rc3hynypFKJi45y
         Q9Rx1Yn0z4IOiKN27URBiSo9sl1ITOO1gGskaJK7ZH9oJW8xSV/j0vyw/jrhyoaa/nB2
         3kHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmUrKi1hrDZad7k93ZIs8d+mhKXeuIaI++bOYz0NYoTe4hO1V2
	524+GvWpgPDg09YUau8hVWU=
X-Google-Smtp-Source: APXvYqwV+BpMZGtG12oDfc0xKq50xXhdSFPl+Oy95NU/g4D0V232mN/xtgzVZZmfTeRPkpgjO16sAA==
X-Received: by 2002:a81:984e:: with SMTP id p75mr5176361ywg.505.1568842979846;
        Wed, 18 Sep 2019 14:42:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3557:: with SMTP id c84ls189316yba.7.gmail; Wed, 18 Sep
 2019 14:42:44 -0700 (PDT)
X-Received: by 2002:a25:dcc3:: with SMTP id y186mr4398981ybe.490.1568842964069;
        Wed, 18 Sep 2019 14:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568842964; cv=none;
        d=google.com; s=arc-20160816;
        b=VXkSWMLA5gEuSO3JTp6AYLHQQKVtOqmHLQUGKYEjBFu14Xi0N/Dz7QR5HM2+3O6ofI
         2FYv51lS4WXwWSs/ENCe54qCvOlo0Ww/CqyxKgBehVrpk/9r2HAz9cbaavsJnTrqv2Uj
         D4opZhaD3BDE6q5P7qd/IaiuWpgtfyaAlAi4S+2IWmtWwkuQqtpnViGjGsmfcKFnEpBz
         8bTsxFsJu94W+uRKJ1Co9I6dSMMUWcewp3N330vgKXhslB1bgViAjaDtXf17xu1fBcLJ
         vCzLlQMjcJxuX+BifldBFt9kjAfPS7A73Au81JUJFvTYv3RzAic+zBPQSgNWi8idg2EE
         wpFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6P902L7LJNPT4ssJNWdrSjXG2av0wc4klnUEBzyUx6c=;
        b=CwXP1cjh6iSLf9YfmCv4gZWKrfHvLpqLRVdF0B2ZMu3JXfSZL5WupGk+o2I3VWfawA
         M4Z8sOv3/6YaUQ7rVlji69UfzAygfPPIfO9fLv8yKJR0ABEVgh4t3s7ZhmqJetICmdhJ
         XjGSrwq8ZN/AQ1Ifn/CNYvfvFAlMa3eBI/gNQLsEEQDR17AEjuR3ZFLfGdQkJE6eOMZ5
         FmKa6yQJsPJ1yAn4tWI9FevYYHhzkxHFbCcJqtByI2I6Fg0ycUoCK6MHZf5Jk9e26eGU
         yjwYXDxsiwsZr2rElByPiLlA1uCGaPW4Fg7AGldayFEtloXbXxC0WZCAf0CFukaf0cZR
         85Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0USsfmH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x188si657428ywg.0.2019.09.18.14.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 14:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id q203so1133011qke.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 14:42:44 -0700 (PDT)
X-Received: by 2002:a37:98f:: with SMTP id 137mr6695305qkj.449.1568842963752;
 Wed, 18 Sep 2019 14:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-12-ivan.khoronzhuk@linaro.org> <CAEf4BzZXNN_dhs=jUjtfCqtuV1bk9H=q5b07kVDQQsysjhF4cQ@mail.gmail.com>
 <20190918110517.GD2908@khorivan>
In-Reply-To: <20190918110517.GD2908@khorivan>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Sep 2019 14:42:32 -0700
Message-ID: <CAEf4BzZndo1z0A83MmcwtYdstkYKSa9Kzfmf1PRuUtS-D49oeg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=I0USsfmH;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Sep 18, 2019 at 4:05 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> On Tue, Sep 17, 2019 at 10:19:22PM -0700, Andrii Nakryiko wrote:
> >On Mon, Sep 16, 2019 at 4:00 AM Ivan Khoronzhuk
> ><ivan.khoronzhuk@linaro.org> wrote:
> >>
> >> In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
> >> correctly to build command, for instance when --sysroot is used or
> >> external libraries are used, like -lelf, wich can be absent in
> >> toolchain. This can be used for samples/bpf cross-compiling allowing
> >> to get elf lib from sysroot.
> >>
> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> ---
> >>  tools/lib/bpf/Makefile | 11 ++++++++---
> >>  1 file changed, 8 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
> >> index c6f94cffe06e..bccfa556ef4e 100644
> >> --- a/tools/lib/bpf/Makefile
> >> +++ b/tools/lib/bpf/Makefile
> >> @@ -94,6 +94,10 @@ else
> >>    CFLAGS := -g -Wall
> >>  endif
> >>
> >> +ifdef EXTRA_CXXFLAGS
> >> +  CXXFLAGS := $(EXTRA_CXXFLAGS)
> >> +endif
> >> +
> >>  ifeq ($(feature-libelf-mmap), 1)
> >>    override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
> >>  endif
> >> @@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
> >>  $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
> >>
> >>  $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
> >> -       $(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> >> -                                   -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
> >> +       $(QUIET_LINK)$(CC) $(LDFLAGS) \
> >> +               --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> >> +               -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
> >>         @ln -sf $(@F) $(OUTPUT)libbpf.so
> >>         @ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
> >>
> >> @@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
> >>         $(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
> >>
> >>  $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
> >> -       $(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
> >> +       $(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
> >
> >Instead of doing ifdef EXTRA_CXXFLAGS bit above, you can just include
> >both $(CXXFLAGS) and $(EXTRA_CXXFLAGS), which will do the right thing
> >(and is actually recommended my make documentation way to do this).
> It's good practice to follow existent style, I've done similar way as for
> CFLAGS + EXTRACFLAGS here, didn't want to verify it can impact on
> smth else. And my goal is not to correct everything but embed my
> functionality, series tool large w/o it.

Alright, we'll have to eventually clean up this Makefile. What we do
with EXTRA_CFLAGS is not exactly correct, as in this Makefile
EXTRA_CFLAGS are overriding CFLAGS, instead of extending them, which
doesn't seem correct to me. BTW, bpftool does += instead of :=. All
this is avoided by just keeping CFLAGS and EXTRA_CFLAGS separate and
specifying both of them in $(CC)/$(CLANG) invocations. But feel free
to ignore this for now.


>
> >
> >But actually, there is no need to use C++ compiler here,
> >test_libbpf.cpp can just be plain C. Do you mind renaming it to .c and
> >using C compiler instead?
> Seems like, will try in next v.

Thanks!

>
> >
> >>
> >>  $(OUTPUT)libbpf.pc:
> >>         $(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
> >> --
> >> 2.17.1
> >>
>
> --
> Regards,
> Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZndo1z0A83MmcwtYdstkYKSa9Kzfmf1PRuUtS-D49oeg%40mail.gmail.com.
