Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBI7XVDXAKGQEWOR2TBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D621CF879B
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 05:57:08 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id l4sf8961877vkn.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 20:57:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573534628; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2n+aOgFvttv7j+7tC6UGM27AYzA6EZFQIaEPT9glAhlBQ+7dgIixH++XZ6puAnoak
         QPf4v4NLKufkJddsmLzP4O5DYJmrgsPZA0z/xHyoX5se8AEcBYW2KXnGfO2zdskiSRHn
         Ohd47nXAU3LNixoiGd6NPQ88sscZqW2MrNjdqqkJ4y9RerNB1qtnDAz4SPeTCQW/2j/c
         zg6BjXVzLj34DiOX76DFQjc9Rmbhvnpbyk8Z7hMJAyEeWgSpSBDoziVSlvy1xUBfOtkL
         g5jpZstDD+SNXfo254J6QlPCqXoM8On2r4MyV3S4q58GYJFP+KWJxJvkwXIvG1qdmXbN
         U0qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=U6iCuzLi/jdKLjXEV+nCR4+X+oqLt3HV2Kjj1rugHU4=;
        b=g594Dxh8kuLXxEmA20dcYXZT1VqgEcCrXcQzx4QfHGasPS0Pt+pI2k/Y96abYLGTac
         P0QxDJzq80J2IX4tkp3dJ+2JoaCzStelaIN2Pt5ZCJ12Rn8FB3D7i7gx3Tbp4kom/Q62
         v06z4H/3OVnPtsdZ+5zRK0U5yWEaTJRcDPxLOBgG+J1ajl/6RDJw1j1N9Dd23XeeY9ke
         z0I4aY48zfNMaJWyUomSj+fVExY8HOmWaItxKtVEBk/nIaPrj9yBAgf/PgaceNVsCRe9
         Ti7hazWPj7OT+rqi4HfEQtHVDnk8wV+bKCZ/qaG+4a+xxpy22mtVYVpleCHFDsUt8eg1
         KrzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AI85TZux;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U6iCuzLi/jdKLjXEV+nCR4+X+oqLt3HV2Kjj1rugHU4=;
        b=qAxGfetSQ0UAWL1OhdGDGfMJXnf52Wmj2SgvqTayWVUuysMllLYZ5BpegoNySb+Ak3
         enibA42LU74AOI2V3DigGavYFtzuxm2TFNjgcXNhzgKhp0S4JcajHKuMg9MCJRB8GxO4
         GzlP0jBb3b/MKmB8bFIDxvqu7ondC8+N0/KmcI+SPV6pmmr0mLLnLtWDJuXi07nyAi+v
         yBixUANIYvYy6KTypfaktGM3Fa9wC3R5NqH638HEEZo/24ttW5mwt2UXOl88WAnffbGg
         KJfN7qSepCZAcFfRH3J1hzNS+nKSVdj0Ntx5wrBdD2XIOWgp43nbYppr/1vRv7D5uOiw
         zYKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U6iCuzLi/jdKLjXEV+nCR4+X+oqLt3HV2Kjj1rugHU4=;
        b=h/wI0oe45DZvn68E8gVcXEf+sGJI/qVZaI12AauKsnXioToMWGpCeJUKp2oTH8fAY8
         l9IkvA5OlkVE5fwo1F8+sKfuSHGLc8AO4S04iN4fCX4430PzIu9boeAlbBQYIyTDnR9o
         6SY/6dCIjxSIgAbU3cMqehGL/sVrGPL1cks5t4Vf562c8ESea+/AwbCRg7lT4ghY/stl
         wlNKVRcXIcnAOEDdKtQNDMMrz8pIxkomhNmpwUXx6DcdmehA+LTONSaTURZ564EYZiDp
         Zf29t96GdYp4nmg8P0ziywEDFUNOSYZAm/SKt8jo2VA7vDYpYMYzUyi8HeqpToBcA+qg
         0kQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U6iCuzLi/jdKLjXEV+nCR4+X+oqLt3HV2Kjj1rugHU4=;
        b=tYvr8/snKnJVeUEfVIUVdbGNqDr+V1b8Q22aRlP0maHMzEFF2KgPunaLyRX+Tw2VO7
         Y15ch3YCN5xWmEiQx8G4MSytW1cqcEg2y6z9LPtR02yISYDlMxddyschPIWfcBomtCDR
         syM65DttvuULzxNSC8ztYSI688q6gXT2gEYHLBLeE4cUxpaba7C8EaF81NVeRLICT41E
         OnIUi+WSx3XvneXYnrTZod3QpH4ZUKPYo8ooh2diYCDONUZyq1vPnOeclh2lA877gdMR
         xPumid7R8ZNyIk7lUSucYjFWJavOq7PdB5F7YOgcLXr2SIV1Ky0EEcVLBEl1nSr9INzr
         IAIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwribpki//Z7xl/geyVkXe2g8Sw4iJSm0KegbKFQprILVJ3Jd+
	zCmc7QRIKsV2JO7Awyttb9A=
X-Google-Smtp-Source: APXvYqw1f6kGCd5izbaEG4i49bctjetjteIXQYLtCKV61pIbk7YgWbYFPH+fbYeVEfCt+YGBKKqSlw==
X-Received: by 2002:a67:f586:: with SMTP id i6mr21582300vso.111.1573534627913;
        Mon, 11 Nov 2019 20:57:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:1082:: with SMTP id 124ls98758vsq.8.gmail; Mon, 11 Nov
 2019 20:57:07 -0800 (PST)
X-Received: by 2002:a67:db9a:: with SMTP id f26mr20896438vsk.84.1573534627526;
        Mon, 11 Nov 2019 20:57:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573534627; cv=none;
        d=google.com; s=arc-20160816;
        b=KCBZKC0Zc8potsS0R9f923BJljBynH8mDuoShD5gjw5mFqJI6DmAaujcRClQMNlyGR
         O/37k7Rbfk1B3wFmDTyyBHfrFmYI2pQpTOLg1E8iTCyjpYHcjtBWP309Z5WoX/yq4gLJ
         yKER8/l1FD7VEJJPlvZWRV8IvddoGvbsHsPPqYKNg5jkd7PpSR+GLc72i79o1dS2bCDH
         u1cARwTY97Fw3W4ZG4HOREzmAUC1gw6QhhUdZ9Yg1eknSSxxPGtIgU+365U6BF+b7w+D
         EhGeO6vARu2iB+ygYzDavBV8xIhrTmeobmuReZfSLKjBtmXMRj5QeLnDH05cc398nBwH
         HbbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tE21poLWpjs1GduZLj+PgABwuxQTljOZlec7LOXTsTQ=;
        b=FWcb3xIB7NEToohazPB39f3J2ZhrsRfkDLk5/iNkp5pig/RPcZ0Ac1J/J9aItEatvi
         zLTjPQxyvCgJmComo05C7Q3gBYlVpwD8huCr+E7aEF75jtt7QGpvx4Mv/59IYvZlHHzk
         Sjl923VF+2lmw0TL7RgLfDSQ5fWDZ3Azi36YI2UdMso+6Cf3w0RoWolT4Dm+5u2VEf32
         tDYxOrguQhnsBC5fBg1UdA6ExcOQ/ypgU4cON9tqVAFjv6YAbXZntzIqfRm74kFpV4Q1
         cY8IFKjGChvUmbNGwCYDn0w4SMCCXF+S1e4+Hxx/8aWyvXomzrx1pxGMwWHk2qv9BpFY
         xO0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AI85TZux;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o206si1151241vka.4.2019.11.11.20.57.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 20:57:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id s5so12435900pfh.9
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 20:57:07 -0800 (PST)
X-Received: by 2002:a17:90a:f48a:: with SMTP id bx10mr3683941pjb.103.1573534626683;
        Mon, 11 Nov 2019 20:57:06 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id n23sm15226461pff.137.2019.11.11.20.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 20:57:05 -0800 (PST)
Date: Tue, 12 Nov 2019 13:57:04 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Albert Ou <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Greentime Hu <green.hu@gmail.com>, Ingo Molnar <mingo@redhat.com>,
	James Hogan <jhogan@kernel.org>, Juri Lelli <juri.lelli@redhat.com>,
	Mel Gorman <mgorman@suse.de>, Michal Simek <monstr@monstr.eu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Burton <paulburton@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincent Chen <deanbo422@gmail.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Will Deacon <will@kernel.org>, linux-mips@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Richard Henderson <rth@twiddle.net>, linux-alpha@vger.kernel.org,
	Vineet Gupta <vgupta@synopsys.com>,
	linux-snps-arc@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
	Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
	Guo Ren <guoren@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	uclinux-h8-devel@lists.sourceforge.jp,
	Brian Cain <bcain@codeaurora.org>, linux-hexagon@vger.kernel.org,
	Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
	linux-ia64@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-m68k@lists.linux-m68k.org, Ley Foon Tan <lftan@altera.com>,
	nios2-dev@lists.rocketboards.org, Jonas Bonn <jonas@southpole.se>,
	Stafford Horne <shorne@gmail.com>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	openrisc@lists.librecores.org, Helge Deller <deller@gmx.de>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	linux-parisc@vger.kernel.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
	Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>, sparclinux@vger.kernel.org,
	Anton Ivanov <anton.ivanov@cambridgegreys.com>,
	Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
	linux-um@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>, linux-xtensa@linux-xtensa.org,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net,
	Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191112045704.GA138013@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112044447.GA121272@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AI85TZux;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/12 13:44), Sergey Senozhatsky wrote:
[..]
> > But yes, this per-code-section loglevel is problematic. The feedback
> > against the patchset shows that people want it also the other way.
> > I mean to keep pr_debug() as pr_debug().
> 
> Hmm. Right.
> 
> > A solution might be to use the per-code-section loglevel only instead
> > of some special loglevel.
> 
> So maybe we can "overwrite" only KERN_DEFAULT loglevels?

LOGLEVEL_DEFAULT, LOGLEVEL_NOTICE, LOGLEVEL_INFO?

So we can downgrade some messages (log_store() only) or promote
some messages.

DEBUG perhaps should stay debug.

> We certainly should not mess with SCHED or with anything in between
> EMERG and ERR.

  [EMERG, WARN]

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112045704.GA138013%40google.com.
