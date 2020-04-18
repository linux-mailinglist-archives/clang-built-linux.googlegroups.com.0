Return-Path: <clang-built-linux+bncBDTKPJW47IKRBZ6B5X2AKGQEQVWZHCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 087971AF48E
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:19:52 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id l6sf2318683lfk.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241191; cv=pass;
        d=google.com; s=arc-20160816;
        b=SkxsDfdVjZH57ltW7aOb8eHlYjaO1YVoEBq/asnamqhbKqzn9WkD9QmXNBKR20mM/n
         BUvC1QkD6bA5jbdy1Be4a+u0uA5vFlF5AV7PHMq7RL2ZGdhYd8ZbYpYaD9zQNCgyUH38
         6U4QFl8eonBgfJf1vfQqdQvWpuq9TvvvXN5YiHokqAyE4IO49f0iXjrbhfescH56yIob
         fkcSSVskKl2b9ej6c4uMGtnG2taNaw6ax1uS2HFnXPoaeSj6lHhLbMN7311NJ3IVCjMc
         +wP3LxTdAsZ9D+fK0gkarE2KGybUbDm2YXLLmYintB2amIca4SLJt2aDSnCDAlOw9+2U
         vFlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=T6Jbm5DMWyCjPI0HWB2NlrM6Kw3AeKwUUpLGIFTNhgY=;
        b=f+c7ysokkGl5AXRaczU3w81uRA26sYRi4a+yt1sPiDFEBQy75LDeMeoRLBYQO7OMFG
         +OG+Jm9tojB0/EHOiZhb0hWTfltzVlHkp91agalwB+rIDs9XloRVFkdDXdpvSDSUjXKS
         byoLK3EUcdFnWVJTyhh+oeKvvOe7riGVB8ULrzgovY6ilhTVJqU4c+f9M6evyLi7N9iD
         8KEneFyzS68zN19Zyt7dBOtl/xlQd1PDs0r9f1ZorgJp7I4NDZB9W8f9sI29bEMAJRR0
         SwIfXAUkC814vLL1NhhDib2fqtiPDYqXdHzWLjPlyTmKCpU1FE8pwl/z60sNdNODwg2n
         Mdlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=NtWMGxm5;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=T6Jbm5DMWyCjPI0HWB2NlrM6Kw3AeKwUUpLGIFTNhgY=;
        b=GUTKUYdeNsRwQRp9VEGgPBjwlb+zvaO3qetVzMux+uhyGbUJQ4CXoWeyvx+sef21QR
         p1Bsh+jMpX4eX/CREml6Ahw+B/MkjNSx6dsPhv5hOZVfb0IDLlJWmX19caX4OMlyMY26
         XcOlZxURUFPeVmaOILrbOe7LpgBWb81DrC68LpLcAW9mLNlAXUpm6c0tqcOaiUZ1WB1D
         +zN7G/6lKONv+yw7M+rh2b6hKcDwVgI7q4rALw4h/RYaViZC5vrshj8q67jedAGy+Cb6
         YfLCrNFQPZ6VrBvEp9lDXBbmp2pEL4CAe7+L5e+j1aRIWKac56vw1S3seZ0st9Ebvn3+
         HKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T6Jbm5DMWyCjPI0HWB2NlrM6Kw3AeKwUUpLGIFTNhgY=;
        b=lTNoALOjrnwdGIvduUieIgW+JhPsuP1gj4j17k0yXC0u/I1MmEw78hYsIDlvOltb+k
         deJvyprLBmY+hffRX8lmQVMjcas/dXKUUcAl0Z6MHTQrY8vdjeXBi/2ALEks3SySPDWE
         kWgu9wbtfMQDzUKhaI9zP/5EvrPk8qEAz97fBpubZp1KFHQ6s1x59fM3XF2Zb6hWM0Sk
         khpmO+2N8L2fuhMJhyrG5/nMNl+UvMJotmYykIs4XR9mWuo3VvOcS7FXKwqa7nX0rgVF
         u25om9HSiU/6sC3T0gfDP/2yFlrSsy0hqvgKpvzmKSLm+KlBOmUf3daueePy/8YbYi5b
         kT5Q==
X-Gm-Message-State: AGi0PuZeU5F8/5GnbFkxW3hYFMLJEG45wgAkLco0a9G3ubzV1aWGWRLQ
	ZVhAC8LHvK2hCdCdGgmh36w=
X-Google-Smtp-Source: APiQypK7OI8WbLASbYM4xbP3j0fU4vKfQeZhO+uRQRkRcQ5HlK8xo168OZEiR3OHJjyUIiln9z8GkA==
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr5583163ljp.116.1587241191417;
        Sat, 18 Apr 2020 13:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:551d:: with SMTP id j29ls950504lfk.1.gmail; Sat, 18 Apr
 2020 13:19:50 -0700 (PDT)
X-Received: by 2002:a19:ca13:: with SMTP id a19mr5718791lfg.68.1587241190573;
        Sat, 18 Apr 2020 13:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241190; cv=none;
        d=google.com; s=arc-20160816;
        b=bxXrVOo8t5LihDtSDzxHLIfRVF+Yk2PaMOeERAiPgcy8H3hMp3QF9YoOXBlblZYs1m
         qnOpIFo2TbPkjeLMAWUp9sg3O4ixmjlLoOfbu1Ew7d17nlAsK14P6L8VU5J154VTQvyJ
         EXBCo/szHIpRjA70m277gC0LMvARaN9riwOGloSe3ryII+OGYPIC5U5NJ6I3b0fWkQ7a
         eqNvNFEbfBTEdHvr2DfP+N+AreVOwRNOg+s6pXf/e0awxssOVm/wl6NtzL6goYdNgCPI
         1zngtTm2iZZME3b8dql2aChM9lhbnx1KQf1ir3NdKzkSFH8MHfF9TfWBRxHhtHcGI/Pd
         gxaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jZu2SG2CC0n9e6bY0OW4NrZkgCkX838M7bfDqNvau2s=;
        b=wxG54rc94Jv4tSElvj+P7EyoLF3WZzt0G/I3kYFZm5jiKPXUHrflsPU29YgG9ArABd
         thbEvNKekIqj9UTKgpZDmDnQPDcxQMBjBXql2NUza/Mw3R2CqRSNEG/TBPUDbDkkxLxt
         a9cuDEthzVP/7S37NJQMLV+lBc30YgUdnFd8/G7eMzZOAcsGuWy8piloKoKBtjpDU8RY
         4p1TcoY9JxjdH399HBYMm+iBbTkQnY0DIK6CYVTB8XpwsdWA2lkoyuHGJZBRE0wKvfdP
         41ge/aX1uE/ljC1wcqKwtH4Cu4Vg+AxZ0JioaQqM3+8zUT5WLYXpUMAdmTxJw0l50jtK
         wOJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=NtWMGxm5;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x145si991998lff.2.2020.04.18.13.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id t63so5494910wmt.3
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:19:50 -0700 (PDT)
X-Received: by 2002:a05:600c:210c:: with SMTP id u12mr10004137wml.135.1587241189836;
        Sat, 18 Apr 2020 13:19:49 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:19:48 -0700 (PDT)
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org
Cc: Dmitry Safonov <0x7f454c46@gmail.com>,
	Dmitry Safonov <dima@arista.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ben Segall <bsegall@google.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Greentime Hu <green.hu@gmail.com>,
	Ingo Molnar <mingo@redhat.com>,
	James Hogan <jhogan@kernel.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Mel Gorman <mgorman@suse.de>,
	Michal Simek <monstr@monstr.eu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Burton <paulburton@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincent Chen <deanbo422@gmail.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Will Deacon <will@kernel.org>,
	linux-mips@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Richard Henderson <rth@twiddle.net>,
	linux-alpha@vger.kernel.org,
	Vineet Gupta <vgupta@synopsys.com>,
	linux-snps-arc@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
	Mark Salter <msalter@redhat.com>,
	linux-c6x-dev@linux-c6x.org,
	Guo Ren <guoren@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	uclinux-h8-devel@lists.sourceforge.jp,
	Brian Cain <bcain@codeaurora.org>,
	linux-hexagon@vger.kernel.org,
	Fenghua Yu <fenghua.yu@intel.com>,
	Tony Luck <tony.luck@intel.com>,
	linux-ia64@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-m68k@lists.linux-m68k.org,
	Ley Foon Tan <lftan@altera.com>,
	nios2-dev@lists.rocketboards.org,
	Jonas Bonn <jonas@southpole.se>,
	Stafford Horne <shorne@gmail.com>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	openrisc@lists.librecores.org,
	Helge Deller <deller@gmx.de>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	linux-parisc@vger.kernel.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	linux-s390@vger.kernel.org,
	Rich Felker <dalias@libc.org>,
	linux-sh@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	sparclinux@vger.kernel.org,
	Anton Ivanov <anton.ivanov@cambridgegreys.com>,
	Jeff Dike <jdike@addtoit.com>,
	Richard Weinberger <richard@nod.at>,
	linux-um@lists.infradead.org,
	Guan Xuetao <gxt@pku.edu.cn>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>,
	linux-xtensa@linux-xtensa.org,
	Len Brown <len.brown@intel.com>,
	Pavel Machek <pavel@ucw.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-pm@vger.kernel.org,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net
Subject: [PATCHv3 00/50] Add log level to show_stack()
Date: Sat, 18 Apr 2020 21:18:54 +0100
Message-Id: <20200418201944.482088-1-dima@arista.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=NtWMGxm5;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
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

Changes to v3:
- Collected more architectual Acks and Reviewed-by
- Fixed compilation on sparc64

Changes to v2:
- Removed excessive pr_cont("\n") (nits by Senozhatsky)
- Leave backtrace debugging messages with pr_debug()
  (noted by Russell King and Will Deacon)
- Correct microblaze_unwind_inner() declaration
  (Thanks to Michal Simek and kbuild test robot)
- Fix copy'n'paste typo in show_stack_loglvl() for sparc
  (kbuild robot)
- Fix backtrace output on xtensa
  (Thanks Max Filippov)
- Add loglevel to show_stack() on s390 (kbuild robot)
- Collected all Reviewed-by and Acked-by (thanks!)

v2: https://lore.kernel.org/linux-riscv/20200316143916.195608-1-dima@arista.com/
v1: https://lore.kernel.org/linux-riscv/20191106030542.868541-1-dima@arista.com/

Add log level argument to show_stack().
Done in three stages:
1. Introducing show_stack_loglvl() for every architecture
2. Migrating old users with an explicit log level
3. Renaming show_stack_loglvl() into show_stack()

Justification:
o It's a design mistake to move a business-logic decision
  into platform realization detail.
o I have currently two patches sets that would benefit from this work:
  Removing console_loglevel jumps in sysrq driver [1]
  Hung task warning before panic [2] - suggested by Tetsuo (but he
  probably didn't realise what it would involve).
o While doing (1), (2) the backtraces were adjusted to headers
  and other messages for each situation - so there won't be a situation
  when the backtrace is printed, but the headers are missing because
  they have lesser log level (or the reverse).
o As the result in (2) plays with console_loglevel for kdb are removed.

The least important for upstream, but maybe still worth to note that
every company I've worked in so far had an off-list patch to print
backtrace with the needed log level (but only for the architecture they
cared about).
If you have other ideas how you will benefit from show_stack() with
a log level - please, reply to this cover letter.

See also discussion on v1:
https://lore.kernel.org/linux-riscv/20191106083538.z5nlpuf64cigxigh@pathway.suse.cz/

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Thanks,
Dmitry

[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
[2]: https://lkml.kernel.org/r/41fd7652-df1f-26f6-aba0-b87ebae07db6@i-love.sakura.ne.jp

Dmitry Safonov (50):
  kallsyms/printk: Add loglvl to print_ip_sym()
  alpha: Add show_stack_loglvl()
  arc: Add show_stack_loglvl()
  arm/asm: Add loglvl to c_backtrace()
  arm: Add loglvl to unwind_backtrace()
  arm: Add loglvl to dump_backtrace()
  arm: Wire up dump_backtrace_{entry,stm}
  arm: Add show_stack_loglvl()
  arm64: Add loglvl to dump_backtrace()
  arm64: Add show_stack_loglvl()
  c6x: Add show_stack_loglvl()
  csky: Add show_stack_loglvl()
  h8300: Add show_stack_loglvl()
  hexagon: Add show_stack_loglvl()
  ia64: Pass log level as arg into ia64_do_show_stack()
  ia64: Add show_stack_loglvl()
  m68k: Add show_stack_loglvl()
  microblaze: Add loglvl to microblaze_unwind_inner()
  microblaze: Add loglvl to microblaze_unwind()
  microblaze: Add show_stack_loglvl()
  mips: Add show_stack_loglvl()
  nds32: Add show_stack_loglvl()
  nios2: Add show_stack_loglvl()
  openrisc: Add show_stack_loglvl()
  parisc: Add show_stack_loglvl()
  powerpc: Add show_stack_loglvl()
  riscv: Add show_stack_loglvl()
  s390: Add show_stack_loglvl()
  sh: Add loglvl to dump_mem()
  sh: Remove needless printk()
  sh: Add loglvl to printk_address()
  sh: Add loglvl to show_trace()
  sh: Add show_stack_loglvl()
  sparc: Add show_stack_loglvl()
  um/sysrq: Remove needless variable sp
  um: Add show_stack_loglvl()
  unicore32: Remove unused pmode argument in c_backtrace()
  unicore32: Add loglvl to c_backtrace()
  unicore32: Add show_stack_loglvl()
  x86: Add missing const qualifiers for log_lvl
  x86: Add show_stack_loglvl()
  xtensa: Add loglvl to show_trace()
  xtensa: Add show_stack_loglvl()
  sysrq: Use show_stack_loglvl()
  x86/amd_gart: Print stacktrace for a leak with KERN_ERR
  power: Use show_stack_loglvl()
  kdb: Don't play with console_loglevel
  sched: Print stack trace with KERN_INFO
  kernel: Use show_stack_loglvl()
  kernel: Rename show_stack_loglvl() => show_stack()

 arch/alpha/kernel/traps.c            | 22 +++++++--------
 arch/arc/include/asm/bug.h           |  3 ++-
 arch/arc/kernel/stacktrace.c         | 17 +++++++-----
 arch/arc/kernel/troubleshoot.c       |  2 +-
 arch/arm/include/asm/bug.h           |  3 ++-
 arch/arm/include/asm/traps.h         |  3 ++-
 arch/arm/include/asm/unwind.h        |  3 ++-
 arch/arm/kernel/traps.c              | 39 +++++++++++++++------------
 arch/arm/kernel/unwind.c             |  5 ++--
 arch/arm/lib/backtrace-clang.S       |  9 +++++--
 arch/arm/lib/backtrace.S             | 14 +++++++---
 arch/arm64/include/asm/stacktrace.h  |  3 ++-
 arch/arm64/kernel/process.c          |  2 +-
 arch/arm64/kernel/traps.c            | 17 ++++++------
 arch/c6x/kernel/traps.c              | 16 ++++++-----
 arch/csky/kernel/dumpstack.c         |  9 ++++---
 arch/csky/kernel/ptrace.c            |  4 +--
 arch/h8300/kernel/traps.c            | 12 ++++-----
 arch/hexagon/kernel/traps.c          | 25 ++++++++---------
 arch/ia64/include/asm/ptrace.h       |  1 -
 arch/ia64/kernel/mca.c               |  2 +-
 arch/ia64/kernel/process.c           | 17 ++++++------
 arch/m68k/kernel/traps.c             | 13 ++++-----
 arch/microblaze/include/asm/unwind.h |  3 ++-
 arch/microblaze/kernel/stacktrace.c  |  4 +--
 arch/microblaze/kernel/traps.c       | 12 ++++-----
 arch/microblaze/kernel/unwind.c      | 40 +++++++++++++++++-----------
 arch/mips/kernel/traps.c             | 35 ++++++++++++------------
 arch/nds32/kernel/traps.c            | 15 ++++++-----
 arch/nios2/kernel/traps.c            | 17 ++++++------
 arch/openrisc/kernel/traps.c         | 12 +++++----
 arch/parisc/kernel/traps.c           | 24 ++++++++---------
 arch/powerpc/kernel/process.c        | 15 ++++++-----
 arch/powerpc/kernel/stacktrace.c     |  2 +-
 arch/riscv/kernel/stacktrace.c       |  9 ++++---
 arch/s390/kernel/dumpstack.c         | 13 ++++-----
 arch/sh/include/asm/kdebug.h         |  6 +++--
 arch/sh/include/asm/processor_32.h   |  2 +-
 arch/sh/kernel/dumpstack.c           | 36 ++++++++++++-------------
 arch/sh/kernel/process_32.c          |  2 +-
 arch/sh/kernel/process_64.c          |  3 +--
 arch/sh/kernel/traps.c               |  4 +--
 arch/sh/mm/fault.c                   |  2 +-
 arch/sparc/kernel/process_32.c       | 10 +++----
 arch/sparc/kernel/process_64.c       |  2 +-
 arch/sparc/kernel/traps_64.c         |  9 ++++---
 arch/um/drivers/mconsole_kern.c      |  2 +-
 arch/um/kernel/sysrq.c               | 23 ++++++++--------
 arch/unicore32/kernel/setup.h        |  2 +-
 arch/unicore32/kernel/traps.c        | 34 +++++++++++------------
 arch/unicore32/lib/backtrace.S       | 24 +++++++++++------
 arch/x86/include/asm/stacktrace.h    |  2 +-
 arch/x86/kernel/amd_gart_64.c        |  2 +-
 arch/x86/kernel/dumpstack.c          |  9 ++++---
 arch/xtensa/kernel/traps.c           | 22 ++++++++-------
 drivers/base/power/main.c            |  2 +-
 drivers/tty/sysrq.c                  |  2 +-
 include/linux/kallsyms.h             |  4 +--
 include/linux/sched/debug.h          |  3 ++-
 kernel/debug/kdb/kdb_bt.c            | 15 ++++++-----
 kernel/locking/lockdep.c             |  4 +--
 kernel/locking/rtmutex-debug.c       |  2 +-
 kernel/sched/core.c                  |  8 +++---
 kernel/trace/ftrace.c                |  8 +++---
 lib/dump_stack.c                     |  2 +-
 tools/include/linux/kallsyms.h       |  2 +-
 66 files changed, 375 insertions(+), 315 deletions(-)

-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-1-dima%40arista.com.
