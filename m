Return-Path: <clang-built-linux+bncBDE5JTGNZULRBMFEYDZQKGQEP5AQOBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC3187668
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:56:33 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id m2sf6272064ilb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584402992; cv=pass;
        d=google.com; s=arc-20160816;
        b=t/mhWopgeBvwe5jyZ0E/4TyPU2G2foCxLlA0vzzIFius+oBG5VGfV2lJBTq6NUDGKO
         CgGjqLHINl8HVOZnBXtsO9+AX7UkYVHf/SzXMj8e57Sp32dKRHDpZ1CRMdYsPk2oOxnj
         y5hXPWR1mFjEdpPDvMgX2wbgTrrMuRYwWBabj358zdNEXSNwi4g7kLO+DD1lVFb+8kte
         zPswcHlqyNVyBkLDfFnPBhHUir8u2/q1szrZdtTQSsimhRQZWrl3sNCM76kO72rugerE
         fMeT8s3kgfhx+u3Vt6WyNsAIZyIKsfARgBBVODIsJNnMJzuUj5mUaeEBgusMLB0U309t
         G9hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4V4doVcOXMOdZS7dcfg6Achv2AXIpb2xL2/hFoZxHdA=;
        b=tnMH8zPYpY7PmFa6YKN0yKZ8VyennwzC24Tw6sBSV6zYnYeGTwGaNssYOx7dJOWdiq
         dKZYw3wfHBS/o+/rPkrJHD6ilnTYauIa9qEMkVcsELgEIc5Vyihk1Wzv0vt0nh05wmJn
         ZaCNLT0lCp0Yn1Uo+Z9bd00wZVaWbbVQjGdGbOmE9paXH0uhw8UEaBH++aJx0cjHwOf6
         9jOO4ZryI7VlG2BxgJcQ4jsI2mxCFxLY5+K99CkQRK6zGTsDbocy9EoGgDw+akoXCJvz
         N5gAzKKB+keLAguEFyydjqwxnucZFlpAE/sp09bXUGsO51HCBqP0T/J4uobMzhTjFymB
         qGoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=zU6Zi2qO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4V4doVcOXMOdZS7dcfg6Achv2AXIpb2xL2/hFoZxHdA=;
        b=XczoFxmnRjP/G5wqTGYeRG4FCueC4C4urvASf5j0XemcW9kjNelOb3Wu43WHmTYS2y
         eteGmiWvWxyWY4cSCYySbhyef9WxWvgiWLnUyh5+HO9Lv9R8cMjIoMiFJ4dpI8wqq0Ue
         P3rADeyd/PpyRwiFYWFHU7SQdleQ9DOG3PFJb4eiGtpN+vjiwnPjsoXm+90BkeOl3CSx
         JmcUJCPRx4x0IRv7fuETx58ToIFMBwEfcDydFCnMy/P4++UHG2ZMOyAa0lhbes+tE+Uf
         OOPHp/a2d7AinC/AgqJGoYdqmzcbadwarFQyj87A1zxkQycjBP8vZV2Bxls0E4SuNtR6
         q9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4V4doVcOXMOdZS7dcfg6Achv2AXIpb2xL2/hFoZxHdA=;
        b=tslVVHv9PbxBBkwkCkJQI3jRZjQ56oFTLMdbfKK4pTFiFZU2W4FwgIhVDHU3F1m0di
         U4VsDr2wGGy7Dog3jDOKR119Frk/PU9RQ2wXCHijpCxffkvHkmkv+9lKNP83CK/y1j3R
         uAUOzpkWcIhkdzQWdJ1ZBBVMiD0mtbkBW8cYrOm8iQ9dmP0uNp6kypg/DbfEDuajIBQt
         g73dQVVD325z4Zc5/YUl0TyQsmdk0htdAx+bZH4kTy1H59SpqJkFW4sy30YcEaiIGQBx
         5raPmfwkA/mhvMBNx/SgMaox/I1rn0ABdzjlY3baU5epmBx3ihtHg9Yk9+y5iwgaL+hm
         fVnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1rGiIaH2vhP/rsZtdFWbCdKm7v4msspOvEIvtpXOdiLQ1CxxR6
	w2gX6c5Z5VOBhDRuyfl955s=
X-Google-Smtp-Source: ADFU+vuzSNrtCU1vrrxoJK9P61Vb7idl0r+jsfUpOjc8CQb2xjgkDizIOkzT6MjABB+n4+gckjeVeA==
X-Received: by 2002:a92:d808:: with SMTP id y8mr2269202ilm.157.1584402992152;
        Mon, 16 Mar 2020 16:56:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls3179255ioq.5.gmail; Mon, 16 Mar
 2020 16:56:31 -0700 (PDT)
X-Received: by 2002:a5d:9489:: with SMTP id v9mr1486957ioj.170.1584402991682;
        Mon, 16 Mar 2020 16:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584402991; cv=none;
        d=google.com; s=arc-20160816;
        b=YUnl5m3LeNU78gPr2/vf/T0/7O0Ge7kZcDQuSUBxKopyusATjhte6y6DzpTw2ac8Sb
         HktrST0wYVh+B3bBKozzBWgPIiGv5Op/shUH7b/uwujFunSBJI0PiGB3Gyv4wl1YCUg2
         afbWYNs8Ejg502ImUGbk/OfglhTwrln+DZxGPYVqUMpwlGTkn8boSrC/1iUAXt/cb5Wx
         0ABOk1sMw9/YBRfwuTVF2ufPbyjyMFc8OC6gvaFyVObmiswapMpUBYGr3eeqJFlT3w5s
         Ip4B+Li068FJKf0Kg/SmJqsIZ0dyzW5LZpCk0TV0TscWFlHRYh0cXLZm9PjcvmTKa6u0
         yfhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dUkKsT4toOjs0vDW/Hl0lgm5Vma1SEYh7qBMpks+JuA=;
        b=CvYE9OforwskDXZq9/2JEFIzm5oDU/0QJ48Q5nTbI5jhj/RBL6ICKRibg1Mm+XzDyq
         l3aKMaaQFl9nZRV4GLyTFB5SEAh8f1ZgC08CfGPRrAUu3OKb87wFXqvYs88QgPhDHuFb
         nDU0WyuH+jujK2YOsp+r6ut7s57Ls8g8HTIm0InZxj9XHnHgcFGbwkut3XMp4NfQqiwd
         lqZ+crNbRQnWd7X+T5jmZjIzNYw2nFt5wQngt/AcjubDSvX3bb8KvxASQ4kEb/Ws5fhg
         eVG1T1mbPh6JEdwFlyQPy9MoZzFSWKg/VyZQ4jmLGoK75x9uDf0+PHXAF8bCSJysp8tE
         3QFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=zU6Zi2qO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id t13si118036ilk.5.2020.03.16.16.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:56:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q16so1836504pje.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:56:31 -0700 (PDT)
X-Received: by 2002:a17:90b:300c:: with SMTP id hg12mr1962040pjb.96.1584402990779;
        Mon, 16 Mar 2020 16:56:30 -0700 (PDT)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id c15sm545529pgk.66.2020.03.16.16.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 16:56:30 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:56:29 -0700
From: Stanislav Fomichev <sdf@fomichev.me>
To: Fangrui Song <maskray@google.com>
Cc: Stanislav Fomichev <sdf@google.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, davem@davemloft.net, ast@kernel.org,
	daniel@iogearbox.net, Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf] bpf: Support llvm-objcopy for vmlinux BTF
Message-ID: <20200316235629.GC2179110@mini-arch.hsd1.ca.comcast.net>
References: <20200316222518.191601-1-sdf@google.com>
 <20200316231516.kakoiumx4afph34t@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200316231516.kakoiumx4afph34t@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b=zU6Zi2qO;       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 03/16, Fangrui Song wrote:
> On 2020-03-16, Stanislav Fomichev wrote:
> > Commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux
> > BTF") switched from --dump-section to
> > --only-section/--change-section-address for BTF export assuming
> > those ("legacy") options should cover all objcopy versions.
> > 
> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
> > but it does support --dump-section. Let's partially roll back and
> > try to use --dump-section first and fall back to
> > --only-section/--change-section-address for the older binutils.
> > 
> > 1. https://bugs.llvm.org/show_bug.cgi?id=45217
> > 
> > Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/871
> > Signed-off-by: Stanislav Fomichev <sdf@google.com>
> > ---
> > scripts/link-vmlinux.sh | 10 ++++++++++
> > 1 file changed, 10 insertions(+)
> > 
> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > index dd484e92752e..8ddf57cbc439 100755
> > --- a/scripts/link-vmlinux.sh
> > +++ b/scripts/link-vmlinux.sh
> > @@ -127,6 +127,16 @@ gen_btf()
> > 		cut -d, -f1 | cut -d' ' -f2)
> > 	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> > 		awk '{print $4}')
> > +
> > +	# Compatibility issues:
> > +	# - pre-2.25 binutils objcopy doesn't support --dump-section
> > +	# - llvm-objcopy doesn't support --change-section-address, but
> > +	#   does support --dump-section
> > +	#
> > +	# Try to use --dump-section which should cover both recent
> > +	# binutils and llvm-objcopy and fall back to --only-section
> > +	# for pre-2.25 binutils.
> > +	${OBJCOPY} --dump-section .BTF=$bin_file ${1} 2>/dev/null || \
> > 	${OBJCOPY} --change-section-address .BTF=0 \
> > 		--set-section-flags .BTF=alloc -O binary \
> > 		--only-section=.BTF ${1} .btf.vmlinux.bin
> > -- 
> > 2.25.1.481.gfbce0eb801-goog
> 
> So let me take advantage of this email to ask some questions about
> commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux BTF").
> 
> Does .BTF have the SHF_ALLOC flag?
No, that's why we manually do '--set-section-flags .BTF=alloc' to
make --only-section work.

> Is it a GNU objcopy<2.25 bug that objcopy --set-section-flags .BTF=alloc -O binary --only-section=.BTF does not skip the content?
> Non-SHF_ALLOC sections usually have 0 sh_addr. Why do they need --change-section-address .BTF=0 at all?
I think that '--set-section-flags .BTF=alloc' causes objcopy to put
some non-zero (valid) sh_addr, that's why we need to reset it to 0.

(it's not clear if it's a feature or a bug and man isn't helpful)

> Regarding
> 
> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
> 
> This option will be difficult to implement in llvm-objcopy if we intend
> it to have a GNU objcopy compatible behavior.
> Without --only-section, it is not very clear how
> --change-section-{address,vma,lma} will affect program headers.
> There will be a debate even if we decide to implement them in llvm-objcopy.
> 
> Some PT_LOAD rewriting examples:
> 
>   objcopy --change-section-address .plt=0 a b
>   objcopy --change-section-address .text=0 a b
> 
> There is another bug related to -B
> (https://github.com/ClangBuiltLinux/linux/issues/871#issuecomment-599790909):
> 
> + objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc
> -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
> + objcopy -I binary -O elf64-x86-64 -B x86_64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o
> objcopy: architecture x86_64 unknown
> + echo 'Failed to generate BTF for vmlinux'
> 
> It should be i386:x86_64.
Here is what I get:

+ bin_arch=i386:x86-64
+ bin_format=elf64-x86-64
+ objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
+ objcopy -I binary -O elf64-x86-64 -B i386:x86-64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.

Can you try to see where your x86_64 is coming from?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316235629.GC2179110%40mini-arch.hsd1.ca.comcast.net.
