Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBDO632AQMGQEAU4PPXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3EA325133
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:07:10 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id p136sf6204180ybc.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:07:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614262029; cv=pass;
        d=google.com; s=arc-20160816;
        b=AF52m1s9pivnEcGbahmwq4onyk45MuoLoG5A2p350qxcuuEtMi+qLgCCuNCqMjNJuD
         bttulaZCRf9jmlPBwWdLHZTs5HwfvHLeANEYkb5vQwIIr1JVraJokugu4iT1Uu894HsZ
         byyRrUTk0OSZcUyM67bWG13/EGrQ7Wp7py5Gvm3Gn80DzDolyzIz9fVOqntFhHqjNWdG
         vHbLT5xw/t3D8Fftl0/DAEPJ7vi/6ioQpdbkNpWjT+5qCcXBit3LeB2mUnrHVoAZYgfS
         S72oyP0AtsNFF9lTor+CUPVXTOHQee+Rs3ImATCeosd+Oyiv9UABSo1Ygs9Jpgxs5xcv
         +7ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0vjNfdqZrX9HV5u3iUjVw9ZAz515+0IZvI3c4H4B52A=;
        b=QqmL61GNn/I143BlXF/TbF1OXL9cNmRpThhWk6dV6J8T7YbonoBk9iqNJ0o+EKV+wG
         cjK6BrueV592Cq9fW+tFWLYHWGi+RhgVNLeCf+9rqZ6DBMdQUkQKF+NhxedxlGBgg3zD
         SN7Q/1MwNYrnyppBsK8xHGwv12n95ENx1RiSp4VLgeC6bch7ST9p5ByY0vt2GCDfHTQG
         pmHDGO6jGrBiC/XzvH/aW1IpniW+Ry+/GuM1tkrjrsVAEJqCXi+3n2/x6vK4wxOAo9gk
         dBB0b8BpXOg+hGsAqyLVCX+vX3TOG/y6RYYT40eXDwJnPCTYWpXU3It+NUCefjncOtkG
         RzvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hOoiOy13;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0vjNfdqZrX9HV5u3iUjVw9ZAz515+0IZvI3c4H4B52A=;
        b=MNX9jcFMjo7YPDdQM6YmDgFzXl8LJ9pA59qEcehoMoT09bxPHrSf8azJDmQqGpk5Ky
         JWRBDCZdejv5LHE5i2I9sPXgAdNapr/BlRa7QdDpL4/4rNh7hG6l3wu+OSUhOir7/oM7
         5A5tMxlM5QPXxu5CupLB3jrjZufflOaxRCXTwhgclL7Mj+ans5GvrpNiGp5SRpGCTDxG
         IZGAFzVYZcnIIw67AlwCyDLYUPWCrYvQxgBTgA8xb3u5HndHp/h/WiAJIwds5lcAo/W/
         X4qOYmFvqti9dj0MIeG38+f1gXqtRuFYF5tTUfkFmPJqczDnU7DtxNV43yOW2PR7eT+K
         q2ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vjNfdqZrX9HV5u3iUjVw9ZAz515+0IZvI3c4H4B52A=;
        b=tR5iCTba1duHG1hctfNKcAA1xIQJRu7gq6yI4TRvJHxvcuJtYQzo9EluyAz9V1Lrje
         /h/aa8Cwq2N5us9zN2rZg9s5c+gcCc8a3qhrX2LAasUDv//njCQ9ap2NQHPBJWlM1apO
         yZ9LdjwOQx1PPKD9CKn4VTJrqg7xA6yb7y64FV2jAhzmN5zzhABZ7N0yVWNvOFc7ny6a
         0V4VVTRCv3LRCuHhFLfdsmAfd6NZjXfAyETOH2BnA3vLV81BiQ+zu+MWd9zoJI0TerSU
         wFdWSflm8iaxiMagIyRjfkF+JUOBLDR1Ks0pjaowpw7irPax6CWNG26YaVHglngMp/RK
         USlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vjNfdqZrX9HV5u3iUjVw9ZAz515+0IZvI3c4H4B52A=;
        b=UQ6PqfOybxxAB4SQH2Fi8pUPP/7GenQM+yzMO4dJlKTCuW6FqDUB6HdwEF5wxHSnn1
         nsEpW2c24j69WS3WkchL6YQ2anR44w04QZgQsXxcgnwfF/Z9iRwbfsmjdIPED/7lYGuh
         DFjVrOpeXhFh7bcyCIVivTnyKlRTwviqM7ZdBxrF04avUhkBskEmbhLZu7Dpini7Yc+N
         1QA7MV95VOFGrm4jlzt2OymFHcQD4Zxf6qzyVnvcJqshBr08ROaWS0JSaI1lyPaJ8r3k
         1xwYIh5sgjLNjlPwmENdcpcC/yU1/QDaPplaGR8ooj0M5Cr3XM/+XfVm9Rq5RJi7SNr5
         XjWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+BmReLpGRIlUXrhgLhGhKZGt6vFfvuXR5MYcDNoz3u3PdVjqQ
	ugDYVI3QCO2I3WYDrSf9jps=
X-Google-Smtp-Source: ABdhPJytojpNiCl+9vjnhw0r+MXALkfX1Eqf39yrcTzfa5z3X0Mc8wGosto+9xAuCuPwRS8rH2gbZg==
X-Received: by 2002:a25:e795:: with SMTP id e143mr3864569ybh.509.1614262029651;
        Thu, 25 Feb 2021 06:07:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls2665604ybk.0.gmail; Thu, 25 Feb
 2021 06:07:09 -0800 (PST)
X-Received: by 2002:a25:c090:: with SMTP id c138mr4104739ybf.279.1614262029073;
        Thu, 25 Feb 2021 06:07:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614262029; cv=none;
        d=google.com; s=arc-20160816;
        b=v92n3dMfORbWcButpx64xwQF/pV+rMPciLjccObDUZi8O+uualyyiQvCpdyU/+/SQR
         7xJJPVAk0jvz06od4JI2g4YwzxHsSt6sB5KlXLS2XTfhjJRWMRNaAwQL8VF3W1w2bft3
         x0Ndzl9Nuz1eIjeYuJgriayH2ABIaIix3VOqxm727ryW4zlWN4ivFnbR7Oe4/174+MKT
         EbGArGA0gxdXBL6xa3jOFfV++XBWKMGh/Ln5Jk4qSBH8cSJliSMorT8QGStDnxRpy/mb
         M/W8D3vf3rEyd9gZev2v6a2tKLs0HuUJbfbK2kFTLP4vTZMmIEmL3oVNFfUBZljV8g7H
         34eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kf5i9CbiJjS3OqbGXPd0cT5cFF2+BKLqwpiHR11tO74=;
        b=0+T9GyYInHgFTs08SCMLVZTg0E38fpp+5u1fwy6TTLS8R9ziWAbQXoKUfsu0OOzj2J
         bHDdWCRTjihCNDnMHAiDfyw29CbdlsmMJFdNmYL714BuNHVgudNezq6lSDyUMSQQVpFY
         QRW3AlJCFvIFNxJKPMw6eLNpjeam7moer+mQVmGpz0caaV7pdV56sCijagCVLzuLevHb
         oeGYULZZStvG5pHGZb7jsBJTO5NdL/BZM9xzrnE62Px27Xoyq3SG34fXHO5BY5DXtF/g
         QuFyjoTorNt20EovK7hVNkWHnIyu0zv/wHg1BnycR5yXP/yqNWqSCoPeNTvx3dUvFdLl
         FUeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hOoiOy13;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id x7si403213ybm.0.2021.02.25.06.07.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:07:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id d5so5015388iln.6
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 06:07:09 -0800 (PST)
X-Received: by 2002:a92:c145:: with SMTP id b5mr2562152ilh.186.1614262028583;
 Thu, 25 Feb 2021 06:07:08 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
 <20210225135339.77qokpo7xcb37ixe@treble>
In-Reply-To: <20210225135339.77qokpo7xcb37ixe@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Feb 2021 15:06:57 +0100
Message-ID: <CA+icZUU7NHFpWg9jECnsXjNPTSJz3Dr9Z=_UVRN44R6AFC-pbA@mail.gmail.com>
Subject: Re: Josh's objtool-crypto Git with Clang-LTO/Clang-CFI
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hOoiOy13;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 25, 2021 at 2:53 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Feb 25, 2021 at 10:12:27AM +0100, Sedat Dilek wrote:
> > $ grep 'warning: objtool:'  build-log_5.11.0-10201.2-amd64-clang13-cfi.txt | grep -v  '.text.__cfi_check_fail: unexpected end of section' | grep  'arch/x86/crypto'
> > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_2block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_4block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> >
> > So the last objtool-warning is seen in both of my clang-lto and
> > clang-cfi kernels.
> >
> > I have attached chacha-x86_64.* files (see attached tarball) if you
> > want to inspect:
>
> Hm, for some reason I got no warnings with the attached file:
>
> $ tools/objtool/objtool check -mralf /tmp/x86-crypto-chacha-x86_64_5.11.0-10201.2-amd64-clang13-cfi/chacha-x86_64.lto.o
> $
>

What?

$ tools/objtool/objtool check -mralf arch/x86/crypto/chacha-x86_64.lto.o
[ empty ]

Dunno, what your above objtool-line does, but...

..with my new kernel (latest Linus Git):

$ grep 'warning: objtool:'
build-log_5.11.0-10201.3-amd64-clang13-cfi.txt | grep -v "unexpected
end of section"
vmlinux.o: warning: objtool: kretprobe_trampoline()+0x49: return with
modified stack frame
vmlinux.o: warning: objtool: machine_real_restart()+0x8c: unsupported
instruction in callable function
arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool:
chacha_2block_xor_avx512vl() falls through to next function
chacha_8block_xor_avx512vl()
arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool:
chacha_4block_xor_avx512vl() falls through to next function
chacha_8block_xor_avx512vl()

( Oops, that machine_real_restart() thing is back. )

So, this is still alive.

Checking my build-log for the objtool-line:

$ grep -B3 'falls through to next function chacha_8block_xor_avx512vl'
build-log_5.11.0-10201.3-amd64-clang13-cfi.txt

52122-  ./tools/objtool/objtool orc generate  --module  --no-fp
--no-unreachable  --retpoline  --uaccess  --mcount
arch/x86/crypto/chacha-x86_64.lto.o; ld.lld -r -m elf_x86_64
--thinlto-cache-dir=.thinlto-cache -mllvm -import-instr-limit=5
--build-id=sha1  -T scripts/module.lds -o
arch/x86/crypto/chacha-x86_64.ko arch/x86/crypto/chacha-x86_64.lto.o
arch/x86/crypto/chacha-x86_64.mod.o;  true

52123-arch/x86/crypto/cast5-avx-x86_64.lto.o: warning: objtool:
.text.__cfi_check_fail: unexpected end of section
52124-arch/x86/crypto/cast6-avx-x86_64.lto.o: warning: objtool:
.text.__cfi_check_fail: unexpected end of section
52125:arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool:
chacha_2block_xor_avx512vl() falls through to next function
chacha_8block_xor_avx512vl()
52126:arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool:
chacha_4block_xor_avx512vl() falls through to next function
chacha_8block_xor_avx512vl()

> > Josh, I needed to solve some git merge conflicts.
> > Might be good you to choose a new base for objtool-crypto?
>
> I updated the branch based on Linus' tree (should match what I posted
> yesterday).
>

Cool, many thanks Josh /o\.

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU7NHFpWg9jECnsXjNPTSJz3Dr9Z%3D_UVRN44R6AFC-pbA%40mail.gmail.com.
