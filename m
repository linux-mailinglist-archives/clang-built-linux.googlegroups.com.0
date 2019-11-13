Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBSW7VXXAKGQEN2ZISZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id ED812FA6DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:51:55 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id a188sf453945vkc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:51:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573613515; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnUyp8Xa+pwPva/1h4JJO1rs02DPv7krNsaizGa6+YEaR4BORNAJ8QFv8L/LUGyV6Q
         zHHYA64B4j2Wcna59ZB54YTa/hSgSBaUdNqPUTSk7LOZ91T5l3A72annOW6BE4B6XuGg
         HyI0DAyQD+F9Hx6pcvG5xboYIvn02UgFn4SFZk3GrnVN19UumJ/e7QBmRJ3JXJ9bG6/v
         cVhVCxYWIhdYQkyRWcsqnUJWaASsNbH3HP4V/P9clStQSEPJpQPKtgFMfnstpMPv3/Ju
         ky3KFeHGwNr6RGqMLsfr+WGkmEA8niTa37LCfEhOFu2FY2dsTFwhiFbofQKwdZBOle5M
         htAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=cVS89zX87ePZKX0zjH1Gi9CwKqRzTPblfal3+uFDFdo=;
        b=ybLk75MC1WURPNlDvCY2BCI1pIWcSdA0LgZe8tZdqPJLiP09OQRbVabWStsJH9iCtU
         srjqoRyzmN6/iz8W+hCcCqAbOKHWsPpkt6foFrks87f5N5uoeL6GdWruRuJwt9WaUyet
         L2WPZx1L4VOqux7kScaX8LwD5R6VFL/Xa0Y+Zr9Y4R45+ISrQ/iQzZ5WMQNGh2yb/mq6
         811nNpJB7FP44LF3eBPuV71ZUH/HYIeRx0ph6s8k9P8eR7ARciFWk57h8oZU11g43fAI
         mTzFK0LyWAki9kknrPAqwCJIcmHUhZ+10jtky+nEI/j95wXgSouEBWFpjkeiZqzMv9a8
         Cnlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XXCh/lzh";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVS89zX87ePZKX0zjH1Gi9CwKqRzTPblfal3+uFDFdo=;
        b=p1aG2PQX8iiwhNebP2rl8pZKIZgVjN06hlg46H+vCG1jiusKvkL2dCVaF/od4a+Yoo
         7UxgVn0i3M8sp/U+QvA0ZlULIUplI6iZs2XtmSJlHrtkQam71dAcV5s/DolKbQc3cJne
         tfmOls6IPOrOnTdFcvNtWmiDhvcoUbMTWWADbXFw1GnhdFoUDWXIWbIEh18KpUmwBLLb
         Otymr7NWdhNe9ph4baypqnoathorQ4RbbIFoa6E8/mcNsBPm3ZXah+X8AU0uzMygvUgZ
         Zbg4aLN1d/F3Lm9IdoPZ3A4ETMRX1UBbr2ZeQozOWtA4dEk/leXg0ygrAgqpyrHVEvEQ
         IMmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVS89zX87ePZKX0zjH1Gi9CwKqRzTPblfal3+uFDFdo=;
        b=cFb+BmrpSnnzEhsjMdzGNr4+5dJkc9tsBWw9PF3a0iHlp0k/UTeDYVZ0W7ZRtJWs2i
         JzzmhWLwiMYKXwSjWiymGvPY66lch84SLPFuqWHqNPMeXDdslSUGIjbw1OhAAXY0Xiul
         DQUlgAts8Lv0nZ233zfR1c6T8nqz6bXg4ukaawr8W9Wb0L80NupKaOxU557XKwdn7w8g
         HFHzR/AKKC6ku62f+y71zL2pV+wT2/YrSFacvhds4CHVplbYR0bHWjBkojtuIJ62p/Pe
         ZdTS3eIC+Iwilm7c9sCDOeCHB3/50d3I/qRnN1/UG8n7Ig/KY9dDE0E1rVKs9uAcq+Gr
         LoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cVS89zX87ePZKX0zjH1Gi9CwKqRzTPblfal3+uFDFdo=;
        b=UVuS7633Zy0dQqrpYj1Xn8Iq8vTaSHPH+fWBpAEyR0a8TOdeNhs+WNZpFNARLHEjna
         a/fUrPdK115M1b/R/vJSjkhuUq5/nmaC04oUbtz/RYH834oFMUNxm1lG1QJDsGWXhW0y
         zDK7+HmOnbDJPvyOOPCmdd2mHevVpvN6+KRxHqDnyOvI1TCX89hade78SSntXNnHKnHM
         OOJVCJXXWZU48Dh/xxTj7X9UgcNFpy57xS8XoyekKfNLQtm4ZNHcwMkMtF0TglJ5NEAq
         Nzjsz/MeANzynC/xcQPxFEwaSTbweXhIcFS4LLd0AVCzROLiJ44ZsnMtgMW6lG6iJ4ba
         FB3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHQWo5zMvwYcSXgB1dGI0Oz3s+lmcDaJGuDD+N9W/kUwqCn8IU
	tuXCHzlxz86/Y1rLtnTY1Vs=
X-Google-Smtp-Source: APXvYqwCSRgBs3Nz5vb6R8g0RFfw/sBMZ00bbs+LyWQmpHNpgeBB9A1pZGqoNlb3DqOJ/SP+DCxtWw==
X-Received: by 2002:ab0:2381:: with SMTP id b1mr529123uan.106.1573613514993;
        Tue, 12 Nov 2019 18:51:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c5ad:: with SMTP id f13ls18869vkl.2.gmail; Tue, 12 Nov
 2019 18:51:54 -0800 (PST)
X-Received: by 2002:a05:6122:1074:: with SMTP id k20mr403314vko.57.1573613514492;
        Tue, 12 Nov 2019 18:51:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573613514; cv=none;
        d=google.com; s=arc-20160816;
        b=Ia2WZ2JfBe9YdjNRNwfUQY7oJaKX6G2/s3TLeNdbkPO9Th0c95nE7EBGETZwxcv6Hd
         bFc10/iHCr2g08CKR33EgdvqSKzlA/ERMmZHdtgqIIGQxRky2YsRLy5F7soTVrsZa3R9
         t/CBQ454atn7n8FKWWJXA2W/dolaSIRh/wgZVvAkzrH5EUBT01iLRx6YuHug0DhLWZxG
         IkSKQTON7Bh8tWSFCEMna5W0eFo75tX7j6KD9e2YjLm//G3uUnkcjGPe/xYUuLN3vDD+
         yFRx5dR7GrqbbJIX87HokFClhNGtu6xRwCT3A+aMIFILkPIDm8dlojUm16E+2rAyjHlO
         hOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mAEGoUcf015Kc1YtW4ruE+InFHxWlwYn7gbBVyirKYs=;
        b=S3wo4G47TG24EzxngWNmHXroa0uGGMdIl5vA90SBVBGOPBScjnx0PQwqQ1maV1fwQx
         tiDlfB8K8lRRx3TiInYSMl5FvHBCbnrYZ7LXyLXQMtojiLAwRwCTBtAiOKhANVtgKRKc
         A8KM2/XdacRWcoF42/8icm0BnBdNPe/ftdfJLbPd7fmW8RoLvSH0ryv/IN5ZYg8Ie4x4
         AMj8JkVw4+cEjB0jA3nAm938ye0k0OHrF4DX7I7ySlC4ePD6dYic6gS6g2szzWBod2kc
         voQQKRVic7kWp37KlD16BphQQ1gdA23mUhwcZPUgdm1PegdbcsoDwfgyNY8uJW5r42ec
         ZgCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XXCh/lzh";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 192si60879vkz.3.2019.11.12.18.51.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:51:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id bb5so417603plb.4
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 18:51:54 -0800 (PST)
X-Received: by 2002:a17:902:fe06:: with SMTP id g6mr1170542plj.159.1573613513522;
        Tue, 12 Nov 2019 18:51:53 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id b1sm463002pjw.19.2019.11.12.18.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 18:51:52 -0800 (PST)
Date: Wed, 13 Nov 2019 11:51:50 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Petr Mladek <pmladek@suse.com>, linux-kernel@vger.kernel.org,
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
	kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191113025150.GA101113@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
 <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
 <20191112042546.GA119579@google.com>
 <d828cb62-aeea-4d67-33ba-b3a93ea10a3d@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d828cb62-aeea-4d67-33ba-b3a93ea10a3d@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="XXCh/lzh";       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/13 02:41), Dmitry Safonov wrote:
[..]
> 
> I don't strongly disagree, but if you look at those results:
> git grep 'printk("%s.*", \(lvl\|level\)'
> 
> it seems to be used in quite a few places.

Yes, you are right, it is used in some places. That's why I said
that I'd prefer to keep that number low (minimize it). But it's
not 0 (that ship has sailed).

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113025150.GA101113%40google.com.
