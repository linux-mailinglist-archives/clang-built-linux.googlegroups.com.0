Return-Path: <clang-built-linux+bncBCIO53XE7YHBBN6NST5AKGQEF6PVXNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F746251B88
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:56:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g3sf5071409otq.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598367416; cv=pass;
        d=google.com; s=arc-20160816;
        b=fV1KKPV1NN0FQffKz8s1Hv5KxFOA2wv4PabWDcrWRc6vx6BbUANDwCWoquAtOJmwt6
         y7hrDtijm2+S5k73PPpdIS2olC05kmzvSlXJ6luc8In3SaqwvyBy9pEwtk/92Qfl5KVj
         p4uMVQHngnLHOQfYSa93UDGglotG+FsM4qAu6IxxqjH+ZuzFEAWLasW4CJjM4w+MxQD0
         0eQ1obbiTp8aKCBLbg67HBCwMxZKfNb8/DaxFusweug7e+Gi9WMTcxs6OeSYZbZQRQ0m
         aINXItQSfllXhVdWMxAq8ByFQz6MppvMENakyudK0r4I6Oeh7EKikkbo4WobdzfHf4AF
         Uo5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=ByzGTUorUaAFWHJEZPfiNxxjAcJA97lO08b4tnxGD3o=;
        b=iuTMMVH4wV7FQ7V1qK3fP3c7FkkMf76gfBFGUsUh4VfE6inWBu8dU/RqMflwMRqkqy
         6E9aKVNhop7hua/KjQIJSqbzLjX8Lil5EPQQuiBYLPHncuMGedLgtllSspesmYd66w2J
         7sEa9g8nzaJrfgtmbplK3Z7laFwfh5Q3HS1GhcayW75XHPndxA4oQCJumUmRzC6zFROk
         ceKF4fiHu+6P0QcM4ml8CwBq2j7BNev5TlgmXqPEDWudd34ELSMcm2NYT5U6/8E+BzWB
         tdbOaWBM8iy56QszdAIWVmu7d5NvZMuHk0LAW4n3QU4BEafqsJlGVgGWjWLXDn88L9l6
         Y+Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jzKWZK9+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ByzGTUorUaAFWHJEZPfiNxxjAcJA97lO08b4tnxGD3o=;
        b=VdxDtr0GplSEe0kn1eiyUxzbyBrfDq/wemTOJnczowzlDRGiJ3ORSg2Im66BCfIrej
         LbkG6x0QQAuOQphsqsSc0A5qqiZORQx9MSr3SSJArRmIrVc3aGsaoYJctsUNSf8+ouu9
         xW4rGmDLkFCUGiceU6OL5Tpf2U7gswq3xGs8fGGwTAL9wES6XkmAIFTsl7GPhyNCAfrP
         JyD1XIUQ/QGygzWcFTTwkL2tw9NHyoQ27/9dqibsvwscTgRqskANm6Ab0XKEdHba6iut
         HgAOAIEOw1hcHirRT2f2wuA2pGrhpgls97Z661/HKNEzyWuCpe62BzW3dioyFs5f81Cx
         qTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ByzGTUorUaAFWHJEZPfiNxxjAcJA97lO08b4tnxGD3o=;
        b=sfqNH5mfAeSUQ4YYJNAQAN09q0u6oIPHEOQvGUvak9Vd8A0A0+EJWTAyacp/46ZX0a
         qPSrUd2vYZY6P8vfR+Y2aqVTIYpADidb66fnA5mzjvrE/1wn7+t69KUqvm52FXVVuf8C
         ZoTc8SE95OkOYzON1QOPMS02AwUGfgRI5OcI1wBmpFJ+cdghHIII/kVVjS6dWhBI2iKi
         KjYkRhsNVwXZkcdAdY44C5ipwSH6fSMNI25EeFIz04NzzR3GFd7U1hEUmQWR+ODnViRr
         YoqfpL6VpTyL4OArrXqWJe8sctpfrptngBK4c0ucRlTWx36LHx4l4ire7U8w+jPWZNEs
         pmug==
X-Gm-Message-State: AOAM531RsWlZ/mic6BGSr4tXLlVyzuV8p8qHfeZ913XvnVxO0ByZwmDV
	8l38tpscDaf0bkGBBT62ob4=
X-Google-Smtp-Source: ABdhPJy26NrKwnG8AFrF3z4hgArMCZ+z2fZ+t4tOXIK3SJuihVO9Pgzk0aN1e+9GXTfrt28zfIQS5w==
X-Received: by 2002:aca:bd45:: with SMTP id n66mr1261979oif.87.1598367416020;
        Tue, 25 Aug 2020 07:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b541:: with SMTP id e62ls1582844oif.2.gmail; Tue, 25 Aug
 2020 07:56:55 -0700 (PDT)
X-Received: by 2002:aca:240b:: with SMTP id n11mr1303846oic.47.1598367415642;
        Tue, 25 Aug 2020 07:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598367415; cv=none;
        d=google.com; s=arc-20160816;
        b=gdEMdY5lNsvB44guXxSxe7nIgL4DNZ8xrqlH7pQeSmhAd3rQHaMjG7GD2uV5MIegCr
         1dPRgSznS4PO1Y8/JcvAzcbhjmoD3YdVLih2kNz/N93cHCDQUIyJH2XGCXPMiLLVjvto
         I13+k9h0bZ69pm8httbp7z43IbVU6uJKMayRJyHnR1v0gA3z+NT0RT+/na4Dz7WWf4+l
         qrLJ4yxVwGb+VZWMFVzaAbAGNZBVswUZavxURsRYmDUfQJPqZ6vbDPUECQYPlxPvXUqh
         eAnCW2zMH9Ljoce2RamufyYAlQmT5naO5vntJLHtdDz5jvBJyto0HObFnUP9qhpLrh94
         723Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=z9DSDteeZJv4hk8JXSzJvId3t2KMGCEta9aR2INYf9c=;
        b=aSZmIxvc/6CarYbgGJrFH2noGDoeF0W+lEqHw9i7Kk6KZ7uRcnsdFis23ZPVZzsPiP
         SaNw7gbUfalK33kMD5zbi1Ooh8W7aNLBlclvZ1U5p5kbNyIH/gKkyI/zxr0Hd8O8UbOq
         nY8AWDFot676IYA+ROzITlopv76BEKVkUjAG0AwVC5MYpy00MfCh7a4onaOhSy32tETN
         uAw28IXD1ZZ+uskJUDphS/ZCHkgM28sIDffZfR2SpCmQqv4a7zFVgv5ErRvxnfuxDcBQ
         iOTObYemWiO7bujYB9ZmlVTrTFsrsVZ0k+IsJJ+QmExnumo6Mr9sJoIBgsBw0ADwzLpj
         dWYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jzKWZK9+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id j139si131558oib.1.2020.08.25.07.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id d27so9120926qtg.4
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:56:55 -0700 (PDT)
X-Received: by 2002:aed:3728:: with SMTP id i37mr9734610qtb.347.1598367415092;
        Tue, 25 Aug 2020 07:56:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n128sm12140750qke.8.2020.08.25.07.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 07:56:54 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 25 Aug 2020 10:56:52 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
Message-ID: <20200825145652.GA780995@rani.riverdale.lan>
References: <20200812004158.GA1447296@rani.riverdale.lan>
 <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jzKWZK9+;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> Hi Ingo,
> I saw you picked up Arvind's other series into x86/boot.  Would you
> mind please including this, as well?  Our CI is quite red for x86...
> 
> EOM
> 

Hi Ingo, while this patch is unnecessary after the series in
tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
and we can add a revert on top of that later.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825145652.GA780995%40rani.riverdale.lan.
