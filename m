Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZEBXP3AKGQEZBK3XXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AF51E4E40
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 21:35:02 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id x6sf7815989qts.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 12:35:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590608101; cv=pass;
        d=google.com; s=arc-20160816;
        b=kyj2ZTkRj1ZJCZ6VQW740stPyVChoVC99n26cUUM+iXuaZP0R5yekhzDdeIAEz1iph
         g1LChcaT0pSK2Jryhu7ulcMVeKMHnMTS1inKdnynKC2DP+UKdhTLY+85E5MqtZ00kDqq
         4PxbKR3pItJtTnu6aLDDC3X+y7IXAe7UFUvLht61Ru2zo6EtnfzYgNgcNa1TpcFTjtsR
         xTdy1DfM/74WEPzodTBWG98f6uWRHdCTgA7dGP6/De129hM4nGxUe+ZSjpiXUxrjnBcZ
         Jsr/FsZRvTrZZqr86a+YJVG+5oX9Mj4b9flQ8J9yz/4SMGZBM8yMdEQ+H2sx2e9NImUb
         HmVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=C0hMXvGTV/zxyM0BgTopbSGGtpZL94b5m0Ejp+frxOI=;
        b=m6GbJ8gN4NMQNCTk2cNNDF7+5g5thk7ogV7BskPxj/j3VYQnpS7sYWEeXQ+nFGRS+v
         /sYefMRvOEQwg/c2doba+xSzt6m60JBHL1a7TGPcVf/mBSnPdUGC0gj2psYKvIZjeKXs
         Q9/8B+rIxiSGfIjsQjmU/wPDwuid+FuaVWfZv/R1Kz6hPBoeTO0BH+PE6hbuZU5BdpSI
         uWS8Sfs/NsN+5uDm+22A7DC8ooHD/ukPa0Xzq/pknRW31RaUPi76MSFErzGlzlVHp4su
         HzW6xbciwH2CFicPB3FwvBs0tgWiG0OT6yoNbnSSUK6oZwnJBb4lo55/A5fSaHsVLNYS
         1GWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYa87opw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C0hMXvGTV/zxyM0BgTopbSGGtpZL94b5m0Ejp+frxOI=;
        b=saJ5ivcvFKe4QbFE+MqMfwpm1TZ4B5yPpDzFN4uiFYzfGYQtI0NfVR16qvjhDTtkOn
         D9HT0YgOz1Rm4Bf3r2S4y/ysAGs0RoW1vSatjN/OXnpdEX87PO6e36wurzhlIurCm1Ow
         oYCs32OtJc1EwRSO0iwGrdNhNmT6/eko5+P80VzPWyuY6HCfA+qOm1YnRdD0GZedTzJi
         zq/h8ID6c1PyzBm6wKd9rGvTay02ER6ohLr3+h4QZ2sxjvKDRlGTSxSOQHPBdc4JNGX9
         G6OzpUsK4R1PJnEsl9buslkYz1XR7TeIvyaIpUmwbCIheM8SSShpBNpf1Af3g3OZL1DG
         zXOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C0hMXvGTV/zxyM0BgTopbSGGtpZL94b5m0Ejp+frxOI=;
        b=ff0N4bIq4weoIV9XR40qUrMLB/UlhFIeDR4FJ1Gzzy5p+LA6f50JXw84hci2WUs+X8
         z8yxtpSSCNf3Q+scZG95dEUvDt6ZDUlRH/TmuhjAO0myzJzkWz7/cnCoDCUBZis2BGU/
         qdDMzV3CDPqBL3ISJ3fekkyYx28zUuJ03+o35mSMyWISaO/geaiDFZliANqzIZMoZz9X
         vC8TWsxX24CR28kgXWxPF+D4YONhu76QQ9qiXrTmlav7mRpUrgVUTSOgKRVfuP7oSmAX
         pLgLxCQC6vV9L1A58z3zxXP0QQuR96vzXuapWGQHyDodGH5/pFI9Eos7Feowi7KQdfZ+
         r98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C0hMXvGTV/zxyM0BgTopbSGGtpZL94b5m0Ejp+frxOI=;
        b=XsA4km0TCPilHDFZ8i1J8ChKTSn3J9kTWkSItDm1cueMJ55n/05jBjeQRR2B4/CcD1
         IxjNFR1CutOrsuU+syK7KqDajIBOhbRAy4D8cyxB5+BKCITuRdDugktRPMMRy/l1r+sS
         9ABOpce3EPDZe0Ql2uoNpiizlButFsz36ttJ6uQ5lh0lQcDvlZS2QFQLsZg3u8Rxhbd6
         CHSGD74GtFjyEWwiHW6jFUJiaC4J76+L0EAe5ZVRtZ/EZuQUyw5+L/oNZeRcVr/Y9uUJ
         lj+Hl9QB7DbIyA0xqEZn8yV9kXKi4dls0VbZR3M1DDon7buO3uBxmFHKDFFLrK88yh6y
         Q3Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zENKMKKUANrQf5v+UG2aQW/NP1h0vxNY5Ul7KtVlV86pVvlLP
	yeydgNRS9GD3zelfD53qz6c=
X-Google-Smtp-Source: ABdhPJx/6IAJ6sny3b4AxH9/QHLHnsD3zO9T1IVdlLMcB34sYGqJ25sZFjMK8g/ZoKh2l1Nz+monvw==
X-Received: by 2002:ac8:1925:: with SMTP id t34mr5842133qtj.265.1590608100842;
        Wed, 27 May 2020 12:35:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls2066383qth.7.gmail; Wed, 27 May
 2020 12:35:00 -0700 (PDT)
X-Received: by 2002:ac8:4e50:: with SMTP id e16mr6114333qtw.149.1590608100507;
        Wed, 27 May 2020 12:35:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590608100; cv=none;
        d=google.com; s=arc-20160816;
        b=z7Jv/V2noHwgMDRgf1VxSSdCbfjJndSh118OLY52gqOQECo50FZkZloh4zm9t7cjBn
         2D9AEbQOhaernnFLTk6/uep12KObn0S29KOUkTIE9k8bNlWj3s5rBacOuwZAlORDcO8T
         15U0llNC/Tjb/u0O+fx/XxdE9opywsIvDCq88N9QxZFfJje0kcqFzff49rvQq3AfSAVP
         CaIuWqK9Vir7k2B9DUrVRxRdmEn7qWydE1euGAXFca5uH45lafIVqYQcviZG60Nd9Bys
         x24Iudg+vHVTIT95xypycGAJkVSsB4+maMlcPSfEVlvJty/7fgu1ai06LDyi9eSYfX0l
         BkjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mqBj2b2oX4jL4f2LODtFXIhldQE/VACP+TTPinfd5B4=;
        b=iQ5w3pnTK8qBE4spU9NtutpJQ+9g5/pQ/ktCsEXxqKEMQpD3BXcjz3qEYq54P/Jbtt
         ZLJfwMkhSTTmd0fMXFn5tFYnak7YSwxx2MRljyfg7J4izaGusIQ7FPor8RlzUa2I1veI
         JKidvUk+/ezU4Jcj5nTOU2HdcbzrV8WM+3VNRGvS+vUfSXbCQbQSKjStKR7GGVBXLGMC
         XxiLKwywij54mlXKmiAnGqwB1RRmr8a3T7jg4P0CIVa/huZL2on5KvdKBvjN/mHjymQ8
         SndhKEQwJdE91pTkMmyWzR8nIeCaMUAsIwDoowTN8S2wHb9Yk6SS5eVCztwdCmgojT3C
         X90Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYa87opw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s11si269730qtq.1.2020.05.27.12.35.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 12:35:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j21so12287321pgb.7
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 12:35:00 -0700 (PDT)
X-Received: by 2002:a63:7d3:: with SMTP id 202mr5357406pgh.279.1590608099639;
        Wed, 27 May 2020 12:34:59 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o15sm3181356pjq.28.2020.05.27.12.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 12:34:58 -0700 (PDT)
Date: Wed, 27 May 2020 12:34:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	Tim Chen <tim.c.chen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Slaby <jslaby@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Diab Neiroukh <officiallazerl0rd@gmail.com>
Subject: Re: [PATCH] x86: crypto: fix building crc32c with clang ias
Message-ID: <20200527193456.GA2141183@ubuntu-s3-xlarge-x86>
References: <20200527141754.1850968-1-arnd@arndb.de>
 <20200527164219.GB1073507@ubuntu-s3-xlarge-x86>
 <CAK8P3a1NS3OCNzD3uCjLmJvdcfLRguaoHtuTKXEuvizmbsQYhA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1NS3OCNzD3uCjLmJvdcfLRguaoHtuTKXEuvizmbsQYhA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XYa87opw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, May 27, 2020 at 08:24:35PM +0200, Arnd Bergmann wrote:
> On Wed, May 27, 2020 at 6:42 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, May 27, 2020 at 04:17:40PM +0200, Arnd Bergmann wrote:
> > > The clang integrated assembler complains about movzxw:
> > >
> > > arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
> > >
> > > It seems that movzwq is the mnemonic that it expects instead,
> > > and this is what objdump prints when disassembling the file.
> > >
> > > Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > We had an identical patch pending from another contributor, see the
> > discussion and result in the issue below.
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1010
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> 
> Was the other one submitted upstream? If yes, let's use that one.
> 
>      Arnd

No, at least not that I saw. I've added Diab to CC now though to
confirm.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527193456.GA2141183%40ubuntu-s3-xlarge-x86.
