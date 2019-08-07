Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBBWUVDVAKGQE3VMJMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5A983ECA
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 03:31:52 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id x5sf51492729otb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 18:31:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565141511; cv=pass;
        d=google.com; s=arc-20160816;
        b=nolvEcmW03n5I5N0JGa9MT7nTaE5J7IGQR+mA3bQEz48Jqqb/2kWZsROe6zoxNyXXu
         YzWT+nYalNg4OAX/qXJnS2TtWIOHLJCGzV4aBIuA/RzC/3a1umKmcQ14yViimw4eaq3S
         DOBlI6wXT9GtQjsKgOvtEYLjYkEWHSMHouHg6NUHh9s+HbNyFENBM2wwasYYCBtoJOtY
         3TazMnPxhBVwuGlxRXa0l5vVjM/un4tLpJgGOOxMSxby6NKVn3Ijnp5mlrkeB+0zSRQW
         xFoeDxYI511N0QmsY/tyc85YfrVmkFlA3OJxFL3gBFZ5tonCZWQYCcGoCSSqfvTKETbg
         QgQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7PdeUk1DxYAhUwK64l8KEi6ynY0dZUIj7iCQkv1jpOQ=;
        b=tS3NeZitZsgM98/8xF4ypZ6wqeUG45N5VGLjL4fav36hezTcKDlviFnqXLL/DQh+JB
         iV+bY5RjZ444eETczCjxSWVN/XRVr9tTpKw6I9rQo+w6yVo9nPLhOqUOS43mhaQkt7Vn
         cWTnpMd0wVajqnUvFJn68AuZcV1N8A33IXdvFZ/jlsY1I4B+iIv0mUuZTqLLJn/Fdr0Y
         q/tA+gDEW/xssSDxjaJH+x/ck+BY8+ZYchL/K5sH8eHdlK3burTUAkprnOKP5dq23Onq
         LAO2nB4p0wWPvV6tpVj60NF460gF+GVdKnRys26Jw1993E3ed29Omw4Ctm41FqNHjNQC
         R4lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F4m9knoh;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7PdeUk1DxYAhUwK64l8KEi6ynY0dZUIj7iCQkv1jpOQ=;
        b=K2dl44H6wScP+e2vJFKQtE0vtrYQNbRI7IAc7ZLO/h0aG6cpfCCR72a5ns7cus4X24
         Xh3+DwtOuRESAjxMn4RT88WjYZTpi7GXYp7zn+CV/xlUPg3xlAt2+7SyuRU/e6Jf4Kdm
         qw/kQakMsQR1dq224+HxPwDmnYurXrcIt49A0YkhBjpKUGqqE2V2e551XKkOpnwYmd3w
         VqCz+faKGZYS29HSSIT7AyS7UTbdHIil3llLKm2vb82JZkusfc//Hn8wIuIjcZUeEr5O
         UkbUAdKKrZw8FWvAti8yBfMuTrbVrbqgkqE1a3zVRBabPK5FXa62nhv/ZmaoK6SaOboD
         EJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7PdeUk1DxYAhUwK64l8KEi6ynY0dZUIj7iCQkv1jpOQ=;
        b=Wph+x/XGsdLDxFYMh+S5kAUngeCIMC9lO8rlpkpT5PGG4AXvmQeRq6SOl5CbhCBdxC
         ue3s0OtUGYqaNOJOX0s0c570ZSGDNZrcIujS01giqcPT+3o9Y2P3W9xSB6FGU+VUNW7V
         ZK5/zcYwvIlMzwUvn2YRbMym9Tj95ZGb3q5GX58ifJNEak/eFHhG0l52zwk1OvAkXuAc
         wD0dHe1aVHVAHXad8uB7wuMqUvBrDFidHQWPnTnI3v38VNXTQXF6U8bj7PbZyjrPz0aY
         LaiIuj6WikQprdEADhnLAsBIN91XykXPBlP/Ddb7x91oofCP9JFzYL/IFRZzJECaslkO
         4twg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVm3LSOOcz0SwL1vfl8crO32jho2vWOOmai+WymvoXQ0eSS+dlf
	TkejyHFuvWHjWu857Q6LzI8=
X-Google-Smtp-Source: APXvYqyDqO5w2+HY/kBXTvlSiBMNOHG8bO8hxamgHHNXnb28QEZfoiQILF3Zf3YQ00yA2SOfoFYSPw==
X-Received: by 2002:aca:280a:: with SMTP id 10mr3342639oix.38.1565141510917;
        Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4804:: with SMTP id c4ls1496135otf.10.gmail; Tue, 06 Aug
 2019 18:31:50 -0700 (PDT)
X-Received: by 2002:a9d:6204:: with SMTP id g4mr6019907otj.40.1565141510665;
        Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565141510; cv=none;
        d=google.com; s=arc-20160816;
        b=Jc+OEc4H4oo3sTJPEiJbeReIQjAlBeeZ4fW5EoyCfGgGsKOcYoTZiWuQQg4FqX5Bpt
         +eweI3og+GjIjDMI50b1hyCw5dQAH5s5jbLfyzS4FvzQgCOeBpzQQ4N7sema/cj7I7uo
         35nKJUPVsjcwd7dfEKj+Ui8NBJfAn8S72OS0/jCNP08OFheTj4e+RwTh/YiXWsFYdE5A
         pe1+97yA5sJJeOjKKjMp4do+/K4mHm6U6i17FNfTqSEl79Lxo/0yU13LPO8LpA5TXqNY
         WVqgsfdSFlMYnDDCvHZtuIGVjJ5Fx1rHaU9SRLwgLXdPwd6zsDUAAvfjC318eEMfIJv7
         mN/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=T+sIdUCYVl9gdRoUkUG8PgRAt1MU+/JJSzC8cSPoyKI=;
        b=w0u6kLgoveBY6QqrPw3zYdg7jxfbt0DVjDR37E64auscirMQcg8hZgm/9FdJKcM6+B
         Pe8rayPr6MoW+zAujLEmJadMMJfCvQoRfA2BECvSZJOmnzt7wF3T9HuwiFps09HNqXNM
         by7e9zC14SfccckPwHhswFPbYhWx2XOv4b0GY4+O4ZT9iCZCWhK8pdlqOTE8GyE2V4XJ
         lP+ZB9by2O1dGuk9MxLXO7GTLtL1q9y7a9qY9HjNuGAFcgLwrLuvEVt7H7FCcjgqPoGg
         tJFqSN6VNRcifTcnealHZiyVgaYCRbAyCHJeY7GkQsZ6WHyyFfdjDEfDBCX9AAw+Szsq
         WcQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F4m9knoh;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id u26si4026546otj.3.2019.08.06.18.31.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id x188so9330413yba.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
X-Received: by 2002:a25:5986:: with SMTP id n128mr4697126ybb.301.1565141510026;
        Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id k20sm20014855ywm.106.2019.08.06.18.31.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 06 Aug 2019 18:31:49 -0700 (PDT)
Date: Wed, 7 Aug 2019 09:31:39 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error
 injection
Message-ID: <20190807013139.GB6724@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=F4m9knoh;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b43
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Aug 07, 2019 at 09:08:11AM +0900, Masami Hiramatsu wrote:
> On Tue,  6 Aug 2019 18:00:12 +0800
> Leo Yan <leo.yan@linaro.org> wrote:
> 
> > This small patch set is to add support for function error injection;
> > this can be used to eanble more advanced debugging feature, e.g.
> > CONFIG_BPF_KPROBE_OVERRIDE.
> > 
> > The patch 01/03 is to consolidate the function definition which can be
> > suared cross architectures, patches 02,03/03 are used for enabling
> > function error injection on arm64 and arm architecture respectively.
> > 
> > I tested on arm64 platform Juno-r2 and one of my laptop with x86
> > architecture with below steps; I don't test for Arm architecture so
> > only pass compilation.
> > 
> > - Enable kernel configuration:
> >   CONFIG_BPF_KPROBE_OVERRIDE
> >   CONFIG_BTRFS_FS
> >   CONFIG_BPF_EVENTS=y
> >   CONFIG_KPROBES=y
> >   CONFIG_KPROBE_EVENTS=y
> >   CONFIG_BPF_KPROBE_OVERRIDE=y
> > 
> > - Build samples/bpf on with Debian rootFS:
> >   # cd $kernel
> >   # make headers_install
> >   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> > 
> > - Run the sample tracex7:
> >   # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
> >   # DEVICE=$(losetup --show -f testfile.img)
> >   # mkfs.btrfs -f $DEVICE
> >   # ./tracex7 testfile.img
> >   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
> >   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.
> > 
> > Changes from v1:
> > * Consolidated the function definition into asm-generic header (Will);
> > * Used APIs to access pt_regs elements (Will);
> > * Fixed typos in the comments (Will).
> 
> This looks good to me.
> 
> Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
> 
> Thank you!

Thanks a lot for reviewing, Masami.

Leo.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807013139.GB6724%40leoy-ThinkPad-X240s.
