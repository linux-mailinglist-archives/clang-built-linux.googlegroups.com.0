Return-Path: <clang-built-linux+bncBDTKPJW47IKRBLE7X3ZQKGQEW6VYTYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B4D186D3E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:39:41 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id t12sf10324408plo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:39:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369580; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgKJ+zpZ4Udw0ZNNGxQqk/V+u04M4wKDmvY9pG7qNX7xqd5pQggH6OaLwB6nCwI7qB
         +a5kxA1pGg5zHL7dce9Mi7R1nS1+pRHEHe0xSdqmYgV6i2LhxdHsGUwmx/CfdMfkFNKb
         +CA9fsAfW0nJHzb4oji+o2W/8YNlhn4rT7VrpwVNcHU7OfJeC1fmhUPn9UXeMXqKhDNb
         Aui51N+D55gJ/ivGzSmyzk3X77n1ygwgWelqz8u2x67WCbBTOpz+D2aRyODNvbPwxG91
         JngXM0J45xqM1uNs9ugupg3lzfylHG2SL2xTTfmONxQAaSJbn0HyzFmBLKsy1B4tnJqc
         lP6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=GGEq5IbySa6x3dhhv7EAQEsq8eI6WJD1ZKC5h7N5x9w=;
        b=AufDJL4JayoF0Ginma0mGH1WkkbQhitOYlJ3p0nsdgkdNZlPhZfwwVzlRzYEbQGrH2
         WCZ1R/TAxNIRq3mSY0ksvArLqg8oLc+6VYB2r6TXe82SwHZJssVVlvOungEUyJPlCDiK
         BDHIGMtCSC0D+T0KoGqUspHuqohDXDsx7tK6AdFBNb38SFUp39juFV43Gw+mmym9P7co
         e4TIXV2vdALeBKO+7S2cVOyDECMUigBkJU3XI1cC0YncIQHnJnEjlC+FLB9jxv02lO30
         cr+Ks9HwpL3adSWqN/KYus0NOuVlcCexlXS6mCf1YyCnJ48gy+ZvmYil+rkw6X26tEIO
         W0Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=V5DsuLdB;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GGEq5IbySa6x3dhhv7EAQEsq8eI6WJD1ZKC5h7N5x9w=;
        b=iPPkp3CymlEoH72PaqPF9NuRE+6ajCNQLWPZSDyQyEMKZt60PR58Qcwz4LPM4gqIW8
         pOTem9J82awUaXy/VAhArCpu7IdFhssy5AfAJ2Fiz2aBZENTHJ5aSXyD+bbGwgoKmbhP
         ADCkVr7mkCY+cJfPhl1Id/ETk8/y5pYZGSHwJREtjUJZJ6qg+99lckT244jGVKsghGLP
         LB+C4kpzr3BxxoAB6TE/Mad9YVIFFfGCR/+rZuKLa3h5p+gZ0i5nWSbdje3TJziKHzMr
         ZhrXutPveORG5NI4iczzqyZO1Y1ehtr727uXi96OSzDauPzu/1Gcn3sSo3FXJiSsS57y
         YIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GGEq5IbySa6x3dhhv7EAQEsq8eI6WJD1ZKC5h7N5x9w=;
        b=rHPAaRZk602LYEBXikHDB7X+pnDZBjsrBYGZCsZEbGhTw35a+yGczcjkytEvFWpUzL
         JGzpmUSAP4eU9IRvuvNIpOOcvpVQpbu1iyJY4myQc/DFJfuk0mI+FTiRKRlBWsWUjZ+y
         fd4d97U8sCdoH00XqNeca38hEdCDDlUw2U27y+B3fsjQJITuKdBozwgmshVvpSe/qxFo
         lml+3luUAC6vZrBe95dK6zpx6yT3srniE25fumwRAKNhW0gdmEfTpmp3vyrCO/4vIO4b
         Dqku/fw0GIedBPu7VC48t7MAzCGLYgSEIvZI4YueW37r9zLE37GW3YtWIEOlY6zV8C+j
         rHaw==
X-Gm-Message-State: ANhLgQ1jxhQ+5Hfa77QyJnYJlXLREfAJpPCO2DuLPuGn3+uWlviz1YmH
	DXkWOBOpO5jjVtBir6scP94=
X-Google-Smtp-Source: ADFU+vtWXN4NffWbrR+xHXg+djIG8srhkOk5qJYNafvn6mW6VxHh3YUiDl27x+zUuRL1rstsuecRXw==
X-Received: by 2002:a63:330f:: with SMTP id z15mr214400pgz.104.1584369580144;
        Mon, 16 Mar 2020 07:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls9645493pls.6.gmail; Mon, 16
 Mar 2020 07:39:39 -0700 (PDT)
X-Received: by 2002:a17:902:7796:: with SMTP id o22mr25525575pll.250.1584369579676;
        Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369579; cv=none;
        d=google.com; s=arc-20160816;
        b=XRTn9LTr+qQu1n27A/x6n9XY+i7in5cuNgeFX76aG+oCVjzPf/SD6nEvrR2Mest4Oi
         sNNmVO4uOGHLj4eaqy7Vj83VgSV6wEQqAnR8LlyaGEtsZaitbN/wnsQ2dP45C0Nkcj6p
         SLzXP5nW/QRVLcYWGWgCwrVRPUx8qEjOMzFRI0ygMiMxtaWkprDl76KOXccgCq4sOrGd
         PP34gPFUaNtmhAnnZjSLIDqv63xRofS62Fm002Mlk6HMygHPxQziSj83Kv8/0Dbkna/4
         JAz0Ftj69mr6j2JkMrK+mBQL0DgZCsVae2FC+ZXrCgBGiagAd2RUiq53uNBxS/V30xqx
         jJEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JXz4T/B3KLStmzRAt7XXeyU3eI2VFhj+Pr5+CtzGSpk=;
        b=zLwnLXL9LH0n8QpCXoh7vzCbnoiwNdjG1bODhabbwotkRBmO9tvHl2jw4qPkgBo1eH
         tm+tTofJDS4ulcAxHKNxO7P7MLSvsAt9J+iIaJVukPF0s8xvNXAbCulu+2tALEBxYyBT
         gDGvPZ6YnKNiVTihDSvZ5V9G66CJfYS3vhFTpPH+VyKElm8SRDNOnOifjCHuttiDkf+Z
         bAwa/WGljnismg3ac/4gg8btidFneL6sn9pDXq+xDMTPEh5o3ahKtgqSxl23u7ogCWxH
         j35uznoRsCylgLZD/DQFOJ6mcbIDkwDF/tFoR0XdvJgo3E4GfkMyJXIL+SxNSqTEUQg/
         hr8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=V5DsuLdB;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z7si491pgz.5.2020.03.16.07.39.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id l184so10039368pfl.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
X-Received: by 2002:a62:1552:: with SMTP id 79mr28522840pfv.215.1584369579224;
        Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:39:38 -0700 (PDT)
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
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net
Subject: [PATCHv2 00/50] Add log level to show_stack()
Date: Mon, 16 Mar 2020 14:38:26 +0000
Message-Id: <20200316143916.195608-1-dima@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=V5DsuLdB;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::444 as
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
 arch/arm/kernel/traps.c              | 40 ++++++++++++++++------------
 arch/arm/kernel/unwind.c             |  7 ++---
 arch/arm/lib/backtrace-clang.S       |  9 +++++--
 arch/arm/lib/backtrace.S             | 14 +++++++---
 arch/arm64/include/asm/stacktrace.h  |  3 ++-
 arch/arm64/kernel/process.c          |  2 +-
 arch/arm64/kernel/traps.c            | 19 ++++++-------
 arch/c6x/kernel/traps.c              | 18 +++++++------
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
 arch/microblaze/kernel/unwind.c      | 37 ++++++++++++++-----------
 arch/mips/kernel/traps.c             | 35 ++++++++++++------------
 arch/nds32/kernel/traps.c            | 15 ++++++-----
 arch/nios2/kernel/traps.c            | 17 ++++++------
 arch/openrisc/kernel/traps.c         | 12 +++++----
 arch/parisc/kernel/traps.c           | 24 ++++++++---------
 arch/powerpc/kernel/process.c        | 15 ++++++-----
 arch/powerpc/kernel/stacktrace.c     |  2 +-
 arch/riscv/kernel/stacktrace.c       |  9 ++++---
 arch/s390/kernel/dumpstack.c         | 11 ++++----
 arch/sh/include/asm/kdebug.h         |  6 +++--
 arch/sh/include/asm/processor_32.h   |  2 +-
 arch/sh/kernel/dumpstack.c           | 36 ++++++++++++-------------
 arch/sh/kernel/process_32.c          |  2 +-
 arch/sh/kernel/process_64.c          |  3 +--
 arch/sh/kernel/traps.c               |  4 +--
 arch/sh/mm/fault.c                   |  2 +-
 arch/sparc/kernel/process_32.c       | 10 +++----
 arch/sparc/kernel/process_64.c       |  2 +-
 arch/um/drivers/mconsole_kern.c      |  2 +-
 arch/um/kernel/sysrq.c               | 23 ++++++++--------
 arch/unicore32/kernel/setup.h        |  2 +-
 arch/unicore32/kernel/traps.c        | 34 +++++++++++------------
 arch/unicore32/lib/backtrace.S       | 24 +++++++++++------
 arch/x86/include/asm/stacktrace.h    |  2 +-
 arch/x86/kernel/amd_gart_64.c        |  2 +-
 arch/x86/kernel/dumpstack.c          |  9 ++++---
 arch/xtensa/kernel/traps.c           | 26 ++++++++++--------
 drivers/base/power/main.c            |  2 +-
 drivers/tty/sysrq.c                  |  2 +-
 include/linux/kallsyms.h             |  4 +--
 include/linux/sched/debug.h          |  3 ++-
 kernel/debug/kdb/kdb_bt.c            | 11 +++-----
 kernel/locking/lockdep.c             |  4 +--
 kernel/locking/rtmutex-debug.c       |  2 +-
 kernel/sched/core.c                  |  6 ++---
 kernel/trace/ftrace.c                |  8 +++---
 lib/dump_stack.c                     |  2 +-
 64 files changed, 368 insertions(+), 311 deletions(-)

-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-1-dima%40arista.com.
