Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBQGK5PZQKGQECREU5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE61192043
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 05:59:45 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id b100sf1160537edf.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 21:59:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585112385; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIR2IvwDbXvZGwaUuNXTNihwMKw+wGnR4s23pPOBsY80ewO/MSy/cC8+362QvCXNJB
         zKe6ptR69tMRW+f1iDjoJREkdcJPgm8C0y32J/DrYNlvJolj9pKpKO2Fg94K4yV2/gpz
         ddJUMpekbqkfPY/nQaXrqrc2zvMwoCuDAJ+vikPf2dqaS2I07/zxeOR5xs8cTeNxJ9eT
         wdosRX083jUlbKWlXk7c9XtI0ahPRdfMuV9BcAD6Ag9JTCK1fRjJVAohnZeFDAKxELmN
         wMZTQ9kV15YpoQKkFa6PjHJwJy5YjWEruQBTtRZBixOdNvcl0iiWb+qljfISbNvG3xpa
         LiqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dBKcFUxTA1a5edbd7nkRzXVs9LGm28nUKWrTVhHUCBg=;
        b=KLPSmXiTeqESUie0YOxxk0g4ZMTB+YnG7b7bAvgoseJu+xFBZHy81KZzqUPR9/YIYE
         d54XidZyDZJ3yNjSoK1Sw3eEAPG7zBuleGKWXX0qqkBnUBy6ZhBY65SyBD7KGdiI5/Rj
         JTT8/iddJcYPgCetZ5a8NhR6JSqEn37fe1xihbN79W+Kx8yvZIBg42Xt9REO8WAcNsAa
         GYphFVB6+vLF/OmGpy9airS1sQH5YTTBOUsYatGHqP8WxdxOF0jEqj/lFiCaizDRYKLE
         s1Pnooyxjh3sQSrL5h2CFjzeDBGSBQ+56iUey49GIRqBy6K7HWOxp3AeoJQDgJvtV/KO
         6BCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eym7r4h8;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dBKcFUxTA1a5edbd7nkRzXVs9LGm28nUKWrTVhHUCBg=;
        b=jtLLS4TeAt9aUewTGUHBb3BhkO1FOWcBovPKJE/uHWfDf7x+B/0mnMI/a8kxYadxgd
         aGv1z1C3DVqjKU6gn0AitcWo/mf3+nP9ReLr9mAw2APfXHvt/Fz+hyeAfgPITtu8t6m7
         uTcJDtjBjMUdj1xfABgE0eDKizTKruiO4mEnfP8Ddiy+3BI/nbCtPAybK2g+vcTZ8JfX
         ltAotZUrMQPd+FTFsK7dbDlnJyllEVPNLHntHIlAmC+fPFiU5My3egPoCkuF4XxD/nCY
         9gsft+8AbaPQGnZ19m1Ln16k2UFijb7Jzjfta/TKB/f5CszplmZRAOwvWIX9TwlAAyxl
         nFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dBKcFUxTA1a5edbd7nkRzXVs9LGm28nUKWrTVhHUCBg=;
        b=tYyvVbZYZlBZoK1hARbKnJ+PYea6CN8wFOnc6aXhRBc5pA6D3Ib2sAmtdNCV/qULg2
         gOl2x5h/cFj+L14cjNUWJAVgWKkJ+q4LEYewT65E7J1PeOi/uMLmlJV113JJfF0RAxLu
         G0lJ5JyKSq+DHVDbffqR9I8qEMHbiS38J4VZjMqJsdf9zIuy2H/TZIMYUM/0MCdo+lVd
         9yUqyGyeqRU8v1ZG9I57hknY1Q+oLW4L0RMPNti1oYAssYiRZXOsPXoNnWouDlU+EoEO
         uAU1LFVRyTH3B9l1EgfxgLEJPKDkEAgFc3icFrO86j0zHxb4ZPkMjwLPRzaoDDByDGLd
         FlkQ==
X-Gm-Message-State: ANhLgQ0mU1sxtFefdtVTjkiQyDsqU/xnZUW+175fUVdHt5aqfSTyb7bt
	cDPlPEbZaP95kP8J14gEAmI=
X-Google-Smtp-Source: ADFU+vvta4sf1JWUIITH0Leek1pCEkVuQIw1QC3F8JEIBnoH+4lM0L1P3hrzNKQZGEaH3XQ5hjnpFg==
X-Received: by 2002:a17:906:64b:: with SMTP id t11mr1604649ejb.336.1585112384975;
        Tue, 24 Mar 2020 21:59:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f290:: with SMTP id f16ls1006318edm.6.gmail; Tue, 24 Mar
 2020 21:59:44 -0700 (PDT)
X-Received: by 2002:aa7:cd78:: with SMTP id ca24mr1066351edb.293.1585112384199;
        Tue, 24 Mar 2020 21:59:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585112384; cv=none;
        d=google.com; s=arc-20160816;
        b=cfY4q6lUUBCTFt02gldSvHSOFsqO9I06g04TlDhG2Wa1rZlmVz1kEOI6NjzWK+VTmk
         O8uhx6TQsPmNBy4kv5rej5LjX3ajDrER6rvwulOnQg9xrfx+zXsesQRC5xe1u8xfMPML
         mxLo9ppNtEqSLpuLKE7FBXE4Ou/5zwts1I2BUqkZTo3GhycCGL78XrXMd/IcPQ/AQwyd
         qKWz7s9O/7krEtVvyOxd1L7WaNOVjca/fM9lix08Hqclh0yCrAeGaWEAKr27wncUfHxu
         Hq6Rw4CaQIyGwmCz4d3LkYKlFRU+yC6B7XmbdYmI7dUGbjfGfgUmRw25AuYZ8XfeAYEl
         EQhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=h4KOauMe4v1I9pCuRQdOG97Qu/heRc/6J7SU7o8yNwE=;
        b=APBs8wacofh8T9jfObYNAlvP/k08VSB16Oi8y22JubuYTlGZA36VcE4xGBKmhlk3HK
         wjI/turFwefnUzycV/N3wISc9uAI9js1YXXkJAWb1WxbytTxI540FY9swiSU9PPrVpHx
         ipHWqfYfqZTMP4wk287rUB1C9C5qthht3EOmE7OzZlJi0U/mXZVWtlpZVssnrclUDDV+
         ftjb3u7ua9XQH+hr+8AV+M/tPXgOud6GUOoiMYvK2n0MznraFVqZ5HlREj53/5aJEqat
         MSFO8iQgy99xutIuXSupOZKQDzKlzknhj86FGpvyicarDzL5Ty6rRrlAYFklEkasF+uP
         NVNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eym7r4h8;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k14si587252ejb.1.2020.03.24.21.59.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 21:59:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p10so1286701wrt.6
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 21:59:44 -0700 (PDT)
X-Received: by 2002:a5d:474b:: with SMTP id o11mr1225073wrs.4.1585112383933;
        Tue, 24 Mar 2020 21:59:43 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id p16sm7149295wmi.40.2020.03.24.21.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 21:59:43 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Wed, 25 Mar 2020 05:59:40 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Herbert Xu <herbert@gondor.apana.org.au>,
	linux-crypto@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	linux-kbuild@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@linux.ie>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Jim Kukunas <james.t.kukunas@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Yuanhan Liu <yuanhan.liu@linux.intel.com>,
	dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
	linux-doc@vger.kernel.org, Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [PATCH 00/16] x86, crypto: remove always-defined CONFIG_AS_* and
 cosolidate Kconfig/Makefiles
Message-ID: <20200325045940.GA24974@gmail.com>
References: <20200324084821.29944-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eym7r4h8;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Masahiro Yamada <masahiroy@kernel.org> wrote:

> This series of cleanups was prompted by Linus:
> https://lkml.org/lkml/2020/3/12/726
> 
> First, this series drop always-on CONFIG_AS_* options.
> Some of those options were introduced in old days.
> For example, the check for CONFIG_AS_CFI dates back to 2006.
> 
> We raise the minimal tool versions from time to time.
> Currently, we require binutils 2.21
> (and we plan to bump it to 2.23 for v5.7-rc1).
> 
> After cleaning away the old checks,
> as-instr calls are moved to Kconfig from Makefiles.
> (patch 11)
> 
> This allows more Kconfig / Makefile cleanups.
> Patch 12 is complex, but I double-checked it does the equivalent.
> 
> Patch 14 bumps the binutils version to 2.23,
> and patch 15 removes more CONFIG_AS_* options.
> 
> I folded all relevanet patches into this series,
> as suggested by Jason A. Donenfeld.
> 
> If x86 maintainers take care of this series, that's good.
> 
> If it is OK to queue this up to Kbuild tree,
> I will send a pull request to Linus.
> 
> Thank you.

LGTM. I've got these four from Jason A. Donenfeld queued up in 
tip:WIP.x86/asm:

 bd5b1283e41c: ("crypto: Curve25519 - do not pollute dispatcher based on assembler")
 829f32d78588: ("crypto: X86 - rework configuration, based on Kconfig")
 95ef9f80ed63: ("x86/build: Probe assembler from Kconfig instead of Kbuild")
 1651e700664b: ("x86: Fix bitops.h warning with a moved cast")

I suppose these might interact (maybe even conflict), and are topically 
related.

Would you like to pull these into the kbuild tree? You can find them in:

   git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git WIP.x86/asm

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325045940.GA24974%40gmail.com.
