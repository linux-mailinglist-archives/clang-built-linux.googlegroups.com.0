Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBY4P4X4AKGQEYFS7PWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1522AA89
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 10:18:45 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id c2sf3066663plr.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:18:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595492324; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFpFVrLNICH7zqbbHHEdvfBcV31j8HXiw9x+E6B+uo/W43OGBYZ/DN8WmyRMJ4n5Tn
         t6Q+cQeioEVBvew/pnF2Htk3xUayc+iu3qJi4oU9qZBJZjrXrJmRd5uqQFcVSdCKojdq
         +wt4tR10rByaHlM5UR5GGLbrUpzEZTKK73ZDAB9yaUx3c4s8hKFYgGstXxtf5BX6S96Y
         AUaXqwcbngqTRW3lJrk+ez+oETYqta4RcgobtOrtFl+iCi0haWiqR2u/UPxWQIs0FmUa
         Q2KNowsNZEw7hs8mkE78uIVlRfwbksk/drSegmC4qeHKeonFz4d5TzLomkZf3vS0QLh4
         bNgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4ViCSRDlbl3wH0ahUMlIKn+2l2v521456fwqXAWLop0=;
        b=Uv9vdvvNcbhKjj6YN2UMt75VMWJxbzjG6NcIhWORLFUyBiwBgWYSjWua/AynOCKZMf
         pK7f+CEZ9GVToRkY6232PFuTo4wGQV3+kBXfcSl6P255N1A86mB/I88DW9c2ddXBwj0Y
         c4cTa5p1g0BJSYyzRGMnlpktb5XMlUypgsX9fnijeDCUElv2snb25G+q8c/4LlQomwXz
         +t+WTGvyAN3OhM6JrdT65g/XeW3IBoKeyBiFTwdxnb3H50oiR+0Dzea8l2FVtZgiwKeK
         n4Ii5Vtig04NcHyqfrj1n3K6Vf5lqWpA4vnH5jv+x+PkioHathdo6FOYbbMHgnPdHAfc
         Hiaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsFuFLxd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ViCSRDlbl3wH0ahUMlIKn+2l2v521456fwqXAWLop0=;
        b=hfiG6tVjZfVay/LjKFnenqBqkO0bVFVuer9aMv5N4tqXCyHNkiTJlIwu0eX53BsdlE
         ZWiffHWrVo74IxDuQXgVJ+dmeoAEZtA15t8zCncOiC7CqEJYnZb9UV0zO5HtiV1sqt+g
         HaUPafvTiAG1G3FEnXA4tTjLUBkgSO92aFAY6tnpPw8AGPEsmFunXZONk4Aa7X7Z5rkp
         ItD4PsNi75nZiin22eF7sKhhRMYxrePkbjzhD73lZA66UK5IBmakZyJlenfEBhyBRpaP
         nN8jeDZoKy+jE2HitdVukxAgp9EId0y6Y5SboU2U9yYmbgI2n5kCiGZCSejF6qNAklEt
         iJdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ViCSRDlbl3wH0ahUMlIKn+2l2v521456fwqXAWLop0=;
        b=I0+yOzmGOnSD7ww/6CN6D6hrJ+/0j5agj7Uy/3odidwkFJ98krjR7UI8Fes1zYTUp9
         0lrB1HZb+Mjg3fZSQDA4RTwA/cQWdw1GYSNIPbN1bT1mzUwfYN6UPo4DK5N+Yg4OZu1C
         AjFi0P3NaqANC20vrAS4cEPgvNXpX+HAVcDGJ/HtcRxRkJ88X+Hj/CenrKNI5cHKhCyJ
         RDH4O/ygqZd3hdh1TXrB0h3IIOu/q25TQa6rYB+KDhwvGhc71oyMWPotguVn+4ftP/AB
         w1e6cxMJiuN2UuOLBXt2+DaieklDFANgzTxZqWGTXcXbHw5ZDbEHOPOx+FludQ2Eulp3
         ZJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ViCSRDlbl3wH0ahUMlIKn+2l2v521456fwqXAWLop0=;
        b=T+rA9bqrLJj2R5nOcxP+zZhxIcjT/Ct/ZXbGZAO0sl4hhODR8Yo/iRtzO7In2jS+iO
         yIVKituz/K77EHg3Jj8AFIiDwX4oOL8u+dmOsINqzNHN/ifqql+AD80Dp/eVDIu+edcN
         6Ciy42aH0PXuGxseR6crwxETRpzeq6/yV4xrkQ7JD+0JaWBCILDYa9msJsHlSVzDdEsk
         rL9XEtn5kCJAinaiUfAxMQElgeBRWt5TX3AVYD/t+cfHDG8R6DiKClfX5MHAaI9c8Na4
         6D0zIL4CzMEjCE2a17xWrrE0Xc7/SqpvUlFVdsLru6zwK49qXVOjV6JvH1NNfMhVF3AK
         VwzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/ZQbUzs0EM4SiPbtqwwReji3QxKInbKNAAQ+/ylDNpvTBRkQN
	j4uMqxRFetKyTiwDTc1Aeok=
X-Google-Smtp-Source: ABdhPJzLLgqvj3gEmA1+17fcrQq+NQy7hq2vM13NWT8+iHli7Osufm3fBcm8meFbP7Of628Rh2hWlQ==
X-Received: by 2002:a17:902:b113:: with SMTP id q19mr2924495plr.170.1595492323900;
        Thu, 23 Jul 2020 01:18:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c1cb:: with SMTP id c11ls1990029plc.7.gmail; Thu, 23
 Jul 2020 01:18:43 -0700 (PDT)
X-Received: by 2002:a17:90a:338a:: with SMTP id n10mr68133pjb.50.1595492323423;
        Thu, 23 Jul 2020 01:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595492323; cv=none;
        d=google.com; s=arc-20160816;
        b=RbFP/lzfnN/ip5G56ToVNA45ia1gS8fzNzEtcnhtjKl+5bnLi2OVFBetsDGg9+vRvB
         hraz42E3BKT/AMuSo15LHI1Zms63BxMp4ln+UiosYRyjVqzt37EuoRk7PepsjYXNLBlo
         ZMluMKXXClrThwkBuOxHlJ5s+k2wh6XhPeTmf3L6l971f8TLPZ0P2EREzyQpeGnR4Sq5
         LQJn/qM44eTo6GYkSO/Hs2Nwxe6g+Miv/iBmtV2uXpJjXFmFJMXXXvDuGxMPkZadZ5Hv
         I+HG+nH0Wv0+SjL5HySH2uFouC1BK9xOhPKE/uwolV5fSGtRRAZOUQERFSyopoGAiPtE
         deQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IH5nIhgYMr2jeQTF+7+IwFj00X321cLfGc0hLCqlb3E=;
        b=B2b1MU3aLDRNA/ToLSfy7BFEVD3ZFqDe1Nn4xzec33LqcNyPGdXcAs1/m1nCTR94Qn
         Jh5syepg8Iwuut0csc2zjucSWoFIWytjYZgdxqeYo7hTx67lVxICbBRCHlpoJyx9hUCO
         ecd2dJq3qCI8CjKmhDxNdujrIjxsHfqBoPjaezaVojOP8t9HH7q7wKfIfJz37Vr0t6Qf
         3bX1HXEkSWouQFkh0Mek3V+IYuZ81gJ5jd5QsLw6ThZgbTICkP69tXzyJ3bNB813B70M
         A+d8pIuqcBv7OPubqtsbnfJyBtl1IQ5d4VDX6nR3htektC4YK/HnbwIG5Y+fsajER4X+
         YIIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsFuFLxd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q85si46691pfq.5.2020.07.23.01.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 01:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id q3so3611606ilt.8
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 01:18:43 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr4002418iln.226.1595492322916;
 Thu, 23 Jul 2020 01:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141754.1850968-1-arnd@arndb.de> <20200723075612.GA14212@gondor.apana.org.au>
In-Reply-To: <20200723075612.GA14212@gondor.apana.org.au>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 23 Jul 2020 10:18:30 +0200
Message-ID: <CA+icZUWvQXUV_ibuWoAASqrCS42Q5PsQhtf1_qz_MALWcUQhiQ@mail.gmail.com>
Subject: Re: [PATCH] x86: crypto: fix building crc32c with clang ias
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Arnd Bergmann <arnd@arndb.de>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	Tim Chen <tim.c.chen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Jiri Slaby <jslaby@suse.cz>, Peter Zijlstra <peterz@infradead.org>, linux-crypto@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OsFuFLxd;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

On Thu, Jul 23, 2020 at 9:57 AM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Wed, May 27, 2020 at 04:17:40PM +0200, Arnd Bergmann wrote:
> > The clang integrated assembler complains about movzxw:
> >
> > arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
> >
> > It seems that movzwq is the mnemonic that it expects instead,
> > and this is what objdump prints when disassembling the file.
> >
> > Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Patch applied.  Thanks.
>

Thanks you very much.

Now we have all x86/crypto patches to be able to use Clang's
Integrated Assembler (IAS) and build with `make LLVM_IAS=1`.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1049#issuecomment-662609378

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWvQXUV_ibuWoAASqrCS42Q5PsQhtf1_qz_MALWcUQhiQ%40mail.gmail.com.
