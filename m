Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5NWYPZAKGQEBMABQFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCF4168D49
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:42:46 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id t12sf4243044iog.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 23:42:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582357365; cv=pass;
        d=google.com; s=arc-20160816;
        b=lLGIZ+mwudbfTS9zXkM8VKKu6E90yiWRXUF0T9bZsqtlJJCqN9H0E7X/MdM/Q2x3Wu
         sW7looHksm7qMpCT3CNiauTNe+bpxn+SLnxEYbx1byldp2EssHy7d/tNideRmTmv0xPc
         w5uUsL3HyQCvos2G7rpcVZ+B2WF0y0G9xbdKTE8UchQss3lDfX7frCeLO9qGL5rxkgqo
         gI6ukhu530Vyh3kTMZSyGFEkENZMzCr5tbUxCDjDZk0CRWxKw3wAl709u1EtIuHeq06Q
         v7pHW1waYB90RIoXUdW9pjeYjWcWI+GVvMqpIX5d7PHUv+RjXj0o9/WgDBEb2rDKiv4A
         ag2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=9Pq028Pl36O634bcukOqF/9U1ETmTlfwv2Gukj+wBjw=;
        b=WYAnnbFT6lBxxePJ/UPUKJJoTNqhbzLx7/mRnFJTC98/quQb7TF4+YUYpQv7zseUA/
         q4YDsTeEIQyC4/a3UjGC5kMbkFGFOm7Xg4PvVeNeztawVMWz38Es2imTtPRWBM+pRiXa
         pe75apddoSyp1hhM3j3Np85+jBrXboIToH6mBj2+Z3LMNCG6xQXrEhtqP+D648Zfdnyh
         FMyL/MUolUZaTrNaEFDaWnNmeRfCuO3g/I3NhenpAPT5Y84OYyn6ZCq/xgeOOaKg8DiE
         LYHF1vmWtl8rrfMS6Er+e87e30iSDXApNA6roBmWd0jJDm7KNoaIaqnMNbVEzssX6p1O
         fHKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPealTR+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Pq028Pl36O634bcukOqF/9U1ETmTlfwv2Gukj+wBjw=;
        b=arCzdmKx1kFrsYAM98UHNsmD6zfU3eEEJp6nFRwbTEFBK8ChkRWDUI9dLRMXlSuiE4
         /QcS/yc4tUSXZyMChm0312fBgKCDQAZrhtYmLhv62ZuGvlaz115DhQZaeIHkHnBVUvv5
         50YaE1NVN8pu9F0o6Kp8qU+bU7OY2/D8jbt0+9ZzQx4LWjr10re10+h3T3dPObSvQg3/
         /Dh+DUTadlS94kyi/P5RGe2NyuTPE/SC0NY/ZuyXQcJSpN/y/U9eyBQos1Kf4hmNTjPy
         CIBEW8ubk/4qcph11B8Pg+NiboFzAfyf9TO2IUhcntHUzVkmd+BFufLGkojRk8BwqFoY
         bWeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Pq028Pl36O634bcukOqF/9U1ETmTlfwv2Gukj+wBjw=;
        b=tT3oPf5oGTQ5DnKawLqFITPTm9p+za29iUUS3407QpA+F+UH/iLQxe63QNsDTW5haD
         qiNSEIUMVX9fmO73zalrNf4l6b24o+iXg84ZzuIooRg0ys90OoBcydx7f8We5m3OXdeQ
         b3zIF9pVNgfENRpzfrLD4JchlS68Xb/pKT8KI+kMJSuyUxV5cCbmPlX6grCtn6dyiH0k
         0D0b93D3Sq+bP/BvSBuiEr24cVBXxq3q05BPzoz+TMgo93kDJZ2UtT/jS4HktPkDOTqb
         Exvn/fGaHa0ZZtsXTaGo5T9FaurKYsyznkF1FMMRp/3c8UbzdYzeuSjVbcMmcxJ1ORBH
         CPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Pq028Pl36O634bcukOqF/9U1ETmTlfwv2Gukj+wBjw=;
        b=hfMQiaH2y8/AphMJUhItLTiW6ycYi8+LrXKDOCVQ3VZHAmOmRi3f5V0GfEjMkk8jLH
         0JuaQY5vSnQyQwNYPTyvtEx7y290vi1SrwErkRhm8Y5nDiJJd+20pliIpfQ7VojfnMzA
         k/pi3YGZtYvdpLiaP1Hj8K5rB2OAPzlRl5vtv6O2RnmBbf3F2FNPRagHr0idHFnxqEr1
         CR6ZjVPP7nyD+8h0JIRItaPE3wo1E9dtsHRKa3ED8Eae4yzIMuYFcQ+m5ULCB2xGvVpv
         F4yzR4uRMu47BDHqNbXqyxNF9p8JAHeZcJDxAeptoOE2sglbWOZIKfHQt11MhKm0htmy
         BEIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdjF4tvW+FQka9/e8/9K30iLo6BlFlEvi5rdaEls8NdNyMmMtE
	xszPry/Uv8YIjePyybGPKI4=
X-Google-Smtp-Source: APXvYqw+yXi3FAdza4D2+njnDq60FGbz5+PbZfZ92ZTAnFHzX8TMzGHo+C16tcLTBLSJ61SOgQiy6A==
X-Received: by 2002:a92:2907:: with SMTP id l7mr42537036ilg.140.1582357365109;
        Fri, 21 Feb 2020 23:42:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:39c5:: with SMTP id h66ls948612ilf.11.gmail; Fri, 21 Feb
 2020 23:42:44 -0800 (PST)
X-Received: by 2002:a92:5d88:: with SMTP id e8mr43378882ilg.106.1582357364774;
        Fri, 21 Feb 2020 23:42:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582357364; cv=none;
        d=google.com; s=arc-20160816;
        b=NG+YLtH6RAA2Z4vaX+x5X1foVxWUplIwZPYS6Ph/ToPnE/KbMjhR+Utba5yXUD/Qdg
         Ssuvt+Do9ZxYLdGl8sZSQPWinnr4drTtn+bv0iE9KAtKCqFXQxB5nd8MhY6dAjrUFz3B
         WfvXYMtZCpfROwsTiH4VoQr7W0aFKNfACrGZb5J81N+0qUjHB7FjKcFlFGM/94OdrE4z
         i5SPeEn7BoyWrZu3wMyXNnCekWRHQwQbOtu1TScroKcZ2aN4Hu76BtyBJQrV7/NRfUrR
         idt08fNL5OFJWU6yLedVQzBnLQz6Bm5HVwbHQPpa7PlBWN+P4SleLP/Q/wOj/+Ts5B01
         j7TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zQq+GG1QYp01vrYlwItFyogojmSp6nseyu5/GmAeVxU=;
        b=s0Cpd6cT4LoHLfHe15OZr8E5aHoikg+5odR3G0iHyh2DcviFEbtROYByJ0h1PLXw/p
         mHrh/e3hLyRAHwqVDiUqo8q5HP7ZKy0o2ooWaepsMGdZE89TpVT8O5dsfpMHI+Y8S7DC
         uUgq/D9kWvAa5tTeN+Dv7BIcX8WWBqHqxZQHMurLhKjFY2H8qc94EORBh4IXSSfaIn/f
         9QKWBDUM1ZAwrsXh8DbsnUacSottii1OfD1TeCS/XUCdTaLtbGyWjvfOCrGAX3by0c0a
         B8PyC3/fpzkN6eNXQotHrQozDgA9udqh2yNzfEllzteWMAZym0/zrfF7+3794V96Ih6k
         uv+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPealTR+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g12si256587iok.4.2020.02.21.23.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 23:42:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id r27so4208855otc.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 23:42:44 -0800 (PST)
X-Received: by 2002:a05:6830:1296:: with SMTP id z22mr30687060otp.354.1582357364220;
        Fri, 21 Feb 2020 23:42:44 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g5sm1972708otp.10.2020.02.21.23.42.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 21 Feb 2020 23:42:43 -0800 (PST)
Date: Sat, 22 Feb 2020 00:42:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222072144.asqaxlv364s6ezbv@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UPealTR+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Feb 21, 2020 at 11:21:44PM -0800, Fangrui Song wrote:
> On 2020-02-22, Nathan Chancellor wrote:
> > On Sat, Feb 22, 2020 at 07:55:21AM +0100, Borislav Petkov wrote:
> > > On Fri, Feb 21, 2020 at 10:08:45PM -0700, Nathan Chancellor wrote:
> > > > On Thu, Jan 09, 2020 at 10:02:18AM -0500, Arvind Sankar wrote:
> > > > > Discarding the sections that are unused in the compressed kernel saves
> > > > > about 10 KiB on 32-bit and 6 KiB on 64-bit, mostly from .eh_frame.
> > > > >
> > > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > > ---
> > > > >  arch/x86/boot/compressed/vmlinux.lds.S | 5 +++++
> > > > >  1 file changed, 5 insertions(+)
> > > > >
> > > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > > index 508cfa6828c5..12a20603d92e 100644
> > > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > > @@ -73,4 +73,9 @@ SECTIONS
> > > > >  #endif
> > > > >  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> > > > >  	_end = .;
> > > > > +
> > > > > +	/* Discard all remaining sections */
> > > > > +	/DISCARD/ : {
> > > > > +		*(*)
> > > > > +	}
> > > > >  }
> > > > > --
> > > > > 2.24.1
> > > > >
> > > >
> > > > This patch breaks linking with ld.lld:
> > > >
> > > > $ make -j$(nproc) -s CC=clang LD=ld.lld O=out.x86_64 distclean defconfig bzImage
> > > > ld.lld: error: discarding .shstrtab section is not allowed
> > > 
> > > Well, why is it not allowed? And why isn't the GNU linker complaining?
> > 
> > No idea, unfortunately I am not a linker expert and the patch that
> > changes this in lld does not really explain why it adds this
> > restriction:
> > 
> > https://github.com/llvm/llvm-project/commit/1e799942b37d04f30b73f6a9e792d551dadafeea
> > 
> > CC'ing Fangrui as I don't know George's email and he is usually
> > responsive to ld.lld issues/questions.
> > 
> > Cheers,
> > Nathan
> 
> In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> cased. Neither the input section description *(.shstrtab) nor *(*)
> discards .shstrtab . I feel that this is a weird case (probably even a bug)
> that lld should not implement.
> 
> In GNU ld, the following is not useful, while lld will discard the
> synthesized .strtab as requested:
> 
>   /DISCARD/ : { *(.strtab) }
> 
> I think it is better making the intention (retaining .shstrtab)
> explicit, by adding a .shstrtab beside /DISCARD/ :
> 
>   SECTIONS {
>     ...
>     .shstrtab : { *(.shstrtab) }
>     /DISCARD/ : { *(*) }
>   }

Thanks for the clarity. With your suggestion (diff below), I see the
following error:

arch/x86/boot/compressed/vmlinux: no symbols
ld.lld: error: undefined symbol: ZO_input_data
>>> referenced by arch/x86/boot/header.o:(.header+0x59)

ld.lld: error: undefined symbol: ZO_z_input_len
>>> referenced by arch/x86/boot/header.o:(.header+0x5D)
make[3]: *** [../arch/x86/boot/Makefile:108: arch/x86/boot/setup.elf]

It seems like the section still isn't being added?

Cheers,
Nathan

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 12a20603d92e..a6c3c7440c27 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -74,6 +74,10 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	.shstrtab : {
+		*(.shstrtab)
+	}
+
 	/* Discard all remaining sections */
 	/DISCARD/ : {
 		*(*)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222074242.GA17358%40ubuntu-m2-xlarge-x86.
