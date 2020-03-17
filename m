Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWGAYDZQKGQE6AB2EGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 2950618772B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 01:56:57 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id c26sf6845474qtj.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 17:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584406616; cv=pass;
        d=google.com; s=arc-20160816;
        b=NSBGrc0Dtvei3UAXXjFumi39eCrPVbOmXbNBIO+8sJlMM+dVKiCWaATJzClkbyl3TQ
         QTxwDL6B0PNzBiU3g+f65CjWM38qxI1izkB9POj+fSs3z2OYb9cxpH9fo6L2EY1MoqqW
         grTXFdKifVxGmNtQqu56Ux3ePwwowulSI2sM5+fgkdSEcEEPll3VY0hGVF19+6X+S29e
         c3CgD0ffq93QRBpCINe6zzfAuULuEfd4i3IY0zpTytS1L3zhzGq39BcUvMBU0Ch7dlkf
         RK6aOstCcMdkDuaxH3r7wyvIhLmIG5GfcCMJfS9WnDOsqpezhDNC4jGZpoaMWCADPw/d
         4kgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=na+MUWD9smvPlitdafZd4ERFZPfVqDVYD9N3TXGf87I=;
        b=W2DOdMsrJeXXjMa8jwFLv/PSnj21JfRrT0EKBYAZB0jaAgVmQtpiWidHH6oJuKmh8Y
         EJkPov4UYhx/m0jLq7TENMvdEQ4OmjYQqHJbV5UpJWdAAENUvQgwD56RrLFwPlXuMfcj
         I6Pa4mvYgC6KP8CTrqGRd18vZyQyfvf1ugWMa+dHK1kW6p5FzccoZSQIc4ohjzQXYGPC
         lQqU0ANxkpQn1JQhPLZHmbo91zRapMn1AdQQtt+PupbqE9rFi1qbdjGg79AF6Kw0ob2C
         jAknqjNmcyJ1CgrUWo82qeazcsvs5GMvNTIVd15Esqe5JGCQvIGkbHRZp8cpNxh5PXfr
         GpcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="sd/xN+RE";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=na+MUWD9smvPlitdafZd4ERFZPfVqDVYD9N3TXGf87I=;
        b=p7R/lEbMS+lEiYGYx0Ao8koyTFB5YITAtDQvd1CbCQzODMASlIZi3TWfdETOS9S+E8
         Tyq58zKQFH44KQg86FGhZnHInlfs85Mq74zbl3ZBAyk8PAKztlgfldEf8FiBsB8obd0d
         FS3D5IaS6q0cqDmTwRtRnCAiQWqmCBspFHhH+ECECZs3RKMlYLSxf0ay/B960kUkuktW
         sA0osyqd/y/VXMkADTpb7+Ucj0SFmt0kHNgj1kDIfsbibNSPrIkzi1CrAVAJzIy65vGf
         xHYfoL9ifr0JocU/cVt8dotWuQMY05FibkTzQ7m2ANv7leDJxkETRkrSvX0cLiZBZRpp
         jdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=na+MUWD9smvPlitdafZd4ERFZPfVqDVYD9N3TXGf87I=;
        b=YFdtFzNihWUV7TThw/7XlLqwkJliwWxHLHgsF3mK7o0+t053GCpFADYdoWhZsg7Mqn
         1UN0rbhLUf/7NC/GovsNv5smLgBly5kHU8Gx3v4l275xNsWzyCmwo1nYCDKbev0x+mNy
         kBhL2A9Rn88P5OgV/6J6VUcMD/VJbovWjXN9JyUnD7I3MlQt+6y0hnNcV7IBPXmtw6/x
         2OY8Xdchn0DDv3XfVta25zO3jqbrSoDyLxrEDGw2VYsbEuZ+gr9GCyM4bLlCttbDowO+
         Rk/ERndyI8EBfj7Ny5UiIVU/fnouom0byTUgNj+YHHgPwJqoHzMev0vFJPhThcm/oXGD
         5Bag==
X-Gm-Message-State: ANhLgQ3F40D7iZoI5eBLwUUXFACQz3PLhQtdjyRbyoWINxphC1nXeaoE
	9jz4wLLOY8OH1lAWTrK0rds=
X-Google-Smtp-Source: ADFU+vvyU/aUgU7d7DVC2zGetu1LxYFEISLQ7Y/RPmDOTPNFnPN/05JH6eznizFJmVLL9EZ9svOoCA==
X-Received: by 2002:aed:2c06:: with SMTP id f6mr2893242qtd.337.1584406616219;
        Mon, 16 Mar 2020 17:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f718:: with SMTP id s24ls8067111qkg.7.gmail; Mon, 16 Mar
 2020 17:56:55 -0700 (PDT)
X-Received: by 2002:a37:4a85:: with SMTP id x127mr2623099qka.152.1584406615872;
        Mon, 16 Mar 2020 17:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584406615; cv=none;
        d=google.com; s=arc-20160816;
        b=z6oo2wcMGtM+16SSMEzNXc8n5QZB2eEFvcfe6AEenRpfCOkTKaUm6NiiF8TTp/PwEA
         NSFZu5cu52CC9IpGJIL7VYRlAiqaoi0omQfffbh1mxP+rfX6QYND4IfKmgwgr261bza/
         SFaF9fqYhSS7SEpY3uy/dZwtx72kACl50KE2xWrwa/1zBD+VuU5YlovYyoXWX0AhZWmx
         33/Mp3v5hhtlhq02T9Fe+Xrqy6catQ6UtJ8/pkthMtU3R0QMrTJ0/3EUeCu6RSOnc2Nf
         6zaMriTZMhIqZhYcY6lpjz8htDeKsgC9SldLv7xdFZ9HvCcwubv5KRhv4fGewcmoOe6R
         uIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=piiiUi1Oxpku//o2qSeAwqcou1OS0cpsZFRb+ApBsBk=;
        b=H3wIfr79Jiqn6mQh6yZY8vcZfiF6XBfQ+cTRN+ag1ZW0ZqXdw8uXSDbWNe/qcQKt2x
         EO+4x9AIAs5EKcX39re+wl9HyparR66/scQxaZlihPKhaJ1hGteF7lSGgwYIDPhLaES+
         Lr4+YheiCJJVsy2o7FzPBDHj4FFrJGAnPxxY5VjNkn7nDidDmPHOVZoGhb+6oLjRBg4w
         CN0k21TQiCUw2bsvQV2mStVLAjf8cwN4tMdgoz68sbL7/ZYtYi+JhCiTRfzcMplOtEpO
         uoGkLWakvVp8we119kkntz58MxQf0eenF3TdfjZE1JJ1UG+xfmL87Ao9CvUv0tIiC5Ct
         Kz8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="sd/xN+RE";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c2si41079qtn.0.2020.03.16.17.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id v13so25020pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 17:56:55 -0700 (PDT)
X-Received: by 2002:a17:90a:db49:: with SMTP id u9mr2299919pjx.175.1584406614580;
        Mon, 16 Mar 2020 17:56:54 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id o11sm844583pjb.18.2020.03.16.17.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 17:56:53 -0700 (PDT)
Date: Mon, 16 Mar 2020 17:56:51 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: Stanislav Fomichev <sdf@google.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, davem@davemloft.net, ast@kernel.org,
	daniel@iogearbox.net, Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf] bpf: Support llvm-objcopy for vmlinux BTF
Message-ID: <20200317005651.tnzbreth7dk4ol43@google.com>
References: <20200316222518.191601-1-sdf@google.com>
 <20200316231516.kakoiumx4afph34t@google.com>
 <20200316235629.GC2179110@mini-arch.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200316235629.GC2179110@mini-arch.hsd1.ca.comcast.net>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="sd/xN+RE";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-16, Stanislav Fomichev wrote:
>On 03/16, Fangrui Song wrote:
>> On 2020-03-16, Stanislav Fomichev wrote:
>> > Commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux
>> > BTF") switched from --dump-section to
>> > --only-section/--change-section-address for BTF export assuming
>> > those ("legacy") options should cover all objcopy versions.
>> >
>> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
>> > but it does support --dump-section. Let's partially roll back and
>> > try to use --dump-section first and fall back to
>> > --only-section/--change-section-address for the older binutils.
>> >
>> > 1. https://bugs.llvm.org/show_bug.cgi?id=45217
>> >
>> > Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> > Signed-off-by: Stanislav Fomichev <sdf@google.com>
>> > ---
>> > scripts/link-vmlinux.sh | 10 ++++++++++
>> > 1 file changed, 10 insertions(+)
>> >
>> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> > index dd484e92752e..8ddf57cbc439 100755
>> > --- a/scripts/link-vmlinux.sh
>> > +++ b/scripts/link-vmlinux.sh
>> > @@ -127,6 +127,16 @@ gen_btf()
>> > 		cut -d, -f1 | cut -d' ' -f2)
>> > 	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> > 		awk '{print $4}')
>> > +
>> > +	# Compatibility issues:
>> > +	# - pre-2.25 binutils objcopy doesn't support --dump-section
>> > +	# - llvm-objcopy doesn't support --change-section-address, but
>> > +	#   does support --dump-section
>> > +	#
>> > +	# Try to use --dump-section which should cover both recent
>> > +	# binutils and llvm-objcopy and fall back to --only-section
>> > +	# for pre-2.25 binutils.
>> > +	${OBJCOPY} --dump-section .BTF=$bin_file ${1} 2>/dev/null || \
>> > 	${OBJCOPY} --change-section-address .BTF=0 \
>> > 		--set-section-flags .BTF=alloc -O binary \
>> > 		--only-section=.BTF ${1} .btf.vmlinux.bin
>> > --
>> > 2.25.1.481.gfbce0eb801-goog
>>
>> So let me take advantage of this email to ask some questions about
>> commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux BTF").
>>
>> Does .BTF have the SHF_ALLOC flag?
>No, that's why we manually do '--set-section-flags .BTF=alloc' to
>make --only-section work.
>
>> Is it a GNU objcopy<2.25 bug that objcopy --set-section-flags .BTF=alloc -O binary --only-section=.BTF does not skip the content?
>> Non-SHF_ALLOC sections usually have 0 sh_addr. Why do they need --change-section-address .BTF=0 at all?
>I think that '--set-section-flags .BTF=alloc' causes objcopy to put
>some non-zero (valid) sh_addr, that's why we need to reset it to 0.
>
>(it's not clear if it's a feature or a bug and man isn't helpful)
>
>> Regarding
>>
>> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
>>
>> This option will be difficult to implement in llvm-objcopy if we intend
>> it to have a GNU objcopy compatible behavior.
>> Without --only-section, it is not very clear how
>> --change-section-{address,vma,lma} will affect program headers.
>> There will be a debate even if we decide to implement them in llvm-objcopy.
>>
>> Some PT_LOAD rewriting examples:
>>
>>   objcopy --change-section-address .plt=0 a b
>>   objcopy --change-section-address .text=0 a b
>>
>> There is another bug related to -B
>> (https://github.com/ClangBuiltLinux/linux/issues/871#issuecomment-599790909):
>>
>> + objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc
>> -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
>> + objcopy -I binary -O elf64-x86-64 -B x86_64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o
>> objcopy: architecture x86_64 unknown
>> + echo 'Failed to generate BTF for vmlinux'
>>
>> It should be i386:x86_64.
>Here is what I get:
>
>+ bin_arch=i386:x86-64
>+ bin_format=elf64-x86-64
>+ objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
>+ objcopy -I binary -O elf64-x86-64 -B i386:x86-64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.
>
>Can you try to see where your x86_64 is coming from?

llvm-objdump -f does not print bfdarch (ARCH= in binutils-gdb/ld/emulparams/*.sh).

% objdump -f .btf.vmlinux.bin.o

.btf.vmlinux.bin.o:     file format elf64-x86-64
architecture: i386:x86-64, flags 0x00000010:
HAS_SYMS
start address 0x0000000000000000

% llvm-objdump -f .btf.vmlinux.bin.o

.btf.vmlinux.bin.o:     file format elf64-x86-64

architecture: x86_64
start address: 0x0000000000000000

% objcopy -I binary -O elf64-x86-64 -B i386:x86-64 --rename-section .data=.BTF .btf.vmlinux.bin meow.btf.vmlinux.bin.o
# happy
% objcopy -I binary -O elf64-x86-64 -B x86-64 --rename-section .data=.BTF .btf.vmlinux.bin meow.btf.vmlinux.bin.o
objcopy: architecture x86-64 unknown


As a non-x86 example, elf64-powerpcle / powerpc:common64:

% powerpc64le-linux-gnu-objdump -f meow.btf.vmlinux.bin.o

meow.btf.vmlinux.bin.o:     file format elf64-powerpcle
architecture: powerpc:common64, flags 0x00000010:


Unfortunately, GNU objcopy<2.34 (before I complained about the redundant -B https://sourceware.org/bugzilla/show_bug.cgi?id=24968)
could not infer -B from -O elf* .
% objcopy -I binary -O elf64-x86-64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o #<2.34
% file .btf.vmlinux.bin.o
.btf.vmlinux.bin.o: ELF 64-bit LSB relocatable, no machine, version 1 (SYSV), not stripped
objcopy: architecture x86-64 unknown

GNU ld and lld will error for e_machine==0.



I will be a bit nervous to make llvm-objdump behave more BFD like.
Adding i386:x86-64, powerpc:common64, etc does not look particularly clean.
Fortunately, looking at the code, it seems that we only want to retain .BTF
The following scheme may be simpler:

objcopy --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin.o && printf '\1' | dd of=.btf.vmlinux.bin.o conv=notrunc bs=1 seek=16

The command after && is to change e_type from ET_EXEC to ET_REL. GNU ld has an extremely rare feature that allows ET_EXEC to be linked,
but lld is more rigid and will reject such an input file.
https://mail.coreboot.org/hyperkitty/list/seabios@seabios.org/thread/HHIUPUXRIZ3KLTK4TPLG2V4PFP32HRBE/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317005651.tnzbreth7dk4ol43%40google.com.
