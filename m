Return-Path: <clang-built-linux+bncBDTKPJW47IKRBHPRRDXAKGQEE2YV4SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B25BF0C51
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:07 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id j14sf8890762oie.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009566; cv=pass;
        d=google.com; s=arc-20160816;
        b=EUh/yK4EGmkVnGDuCsBSYPQ02LPY1TWWV2IUJNq4/0bBJ+jQ6JUwCHEwX7ttS4KZuw
         I/5EaY86rFbypcSrQz7/ylpiqVuc4Ah9HCt6tLoj3Y/rFJiO6/bxhenDOV+3cBlwLd8V
         lzCR3F0vsAT9fvfW8qB4g9Nxu7vNI0R8MxNl9TLaqF03YebdKPgSbFAr/2hSEaJTxp4+
         XcSFocrHaTmDF6AW0/s61HbLbUfHdPIvt38WUo/r1lun+qH/d9kvG0226asejymRX39o
         UOEG4fC3f+959NzhUjXNmL6jUSYod2kUOn2s1oQMStCFHOzodYDaHDEOQhZEob04LFX5
         GowA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=uv7I6GKEmt7PZ0v02i0xrNUQqFpuFIQYw9EAoGZkiBA=;
        b=UmD213/KvTKLacWr0BpczzdwYbjuVmmKfV/Z8QPAie/i0w9ob0mc+fauptao+QektU
         LOtefMbBbfkq5BClvb52ZtKesDjfsI2RxIKtfqZsLYHaAHI7h7Cb2O4AoZ3Ahrb8YtAJ
         4g2GRyABf1ez6cYfmHDB49zxQZPjoOnHdx6SC2BaSmBLYN/O5nRmf61uaBNyuKyKGYQE
         FXQlQ8jwA6klspza5TXcKTBqJA4IzUprdHLTN9AGvF0T4ZuQcl5ws2SnIO3///yv8qlR
         lymz2llvSnVxvzPIsBsgUuVolnlEWrXz78vEGhk2HV0cPayNt0cEVrFlo1xIDTuEynGG
         qxVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=jzPQRDte;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uv7I6GKEmt7PZ0v02i0xrNUQqFpuFIQYw9EAoGZkiBA=;
        b=PRmXexBUE8IVWlyYfIY3kjhSgJ/ZVvi7BucfGvV7KECg9Rxf5sEAEa5RDzWFcdbclF
         94hTCHsw0Y4D//D9KHzPG+z/O9LoQj9cWgJIuclQTQbi5i/2mSNLvSQXq8hdGKywGnPH
         iHcha2trKCkuI+OKATGX1509F4NDmwVCQ04KWHoZkNH+NfiZ/TQK9Q9NPHtpLK+p0JEK
         VPR7BsP3ZgvzESHLluz/5hv64CT1t8nJuBB3Z4movV7kWtdnE2v/TyOWCUqSq0pdk2wF
         W0X4CWKW4wQ3DgnHlpPcc4RXzlbzEaQpP3ZPkbmr8TczOT88ggWK7KuRNEuWM2PaEMDJ
         Fo7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uv7I6GKEmt7PZ0v02i0xrNUQqFpuFIQYw9EAoGZkiBA=;
        b=EMFKzbT1UkV4e6/bjpoAby8NZPnhtEPK5MudUluWx4QMzLwUyosloPMIJFwZzEGvNq
         7IQUvUreV7L0qQzAR6AjVbcf4xQIG4cypZvtbWNSHlCSYEeA2uipAv9daawFc0LypMNh
         yQa01sFNfRyXqMKNpfFyGmZZbRZ3BIKePQtil+EA1dXeQrwMHdaXrSvZO6qacm55ZeWx
         febILevWXIZM1SSt79NKmf30tMsP5BnY8cfdlH3rDNpWOGglLMOIQ/i9XYirK1311/JQ
         rTBGsGcxn2su1URuMlOikFZSUVXYfbbEWEsrHtNOQ3jkljMs1QWjmohXWsM79hGNonHz
         tBUg==
X-Gm-Message-State: APjAAAVWx+G2PvBwPEHanpH1uPAh5ck3WuBddKR80n77oK5ULOjzL92e
	ZQFuxpjKHIdluCjxL6/0aqo=
X-Google-Smtp-Source: APXvYqxTKwFKia4IzvMXxSKr2WsfSLsyf/nT1ldNTpG+ejgSi/cXIpUSpMYsgWD0TIb9CVhHot27Qg==
X-Received: by 2002:a05:6830:1af7:: with SMTP id c23mr89175otd.247.1573009566024;
        Tue, 05 Nov 2019 19:06:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls450181otf.14.gmail; Tue, 05 Nov
 2019 19:06:05 -0800 (PST)
X-Received: by 2002:a05:6830:1649:: with SMTP id h9mr94827otr.281.1573009565600;
        Tue, 05 Nov 2019 19:06:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009565; cv=none;
        d=google.com; s=arc-20160816;
        b=g7+KsfrRxGL8TqYyxOm/s1xOpNlvSYtnsJFjTcWBAdcKSNUnEuqESml4U256Hv8LUy
         hj/so+/OvDKLrJfagXk4lPa/0FjKSKmv8MmXGguSixQuHq/Yc4Vgij4H+KvS10W3RqLx
         lk5g3TZUnf7cEf/Ie8jXVfhKQOZU2yPuZiW63cc8V8tO1ctHQsmbr8t8bD/SuF3cs1Fu
         To7MYQE7jwgNZVlPgvlZnOKBTOcOX8+VmJp0tEJjKc8MlmXVhg6qhD3LxbJDjg/+uGIx
         ZBgq8FIYwLs4p3asU0/Fs9uvRgxWQuQ1FTA745EdJju6lkin3glsKTvsDXnR7vyaLpn6
         v7OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3HFF42qAlT7r/F7ag4hs7rtX/wyMvbKmMS4A+1JVsNY=;
        b=l7VxNyvs3bCbZYqbTtyf1xTE9zfhJGZI7nkvjmxMHJsesJrcntVwrxCDPaqmvj4ImH
         d1BwMbBDumeSTae6zdWnGRgJRu9Togdt+AkBwpOLnr8aGRFWqgKJa2klR+vi+aajTGPb
         G/wVgFpEBDcBXL02euceb6FW+5lXd9sgvj8fF/sFXUyuQtLJDwRfr5pLHMAICD8Q9Qco
         fRv5wFz5pCHnZThP06Hnzvq697AjOo3UD2FqWrrVJi/5PFpzL11IbEg/HPJsZp97+7Ax
         ATTx9IfvPAVoB7U5ZSkC4V3GoDUHl9+uIj03vo1wJkn7L7yyJtUSZ379FHOjH60xfCAu
         09Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=jzPQRDte;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j190si791987oib.0.2019.11.05.19.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:05 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x28so14512665pfo.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:05 -0800 (PST)
X-Received: by 2002:a17:90a:ff04:: with SMTP id ce4mr558301pjb.133.1573009564730;
        Tue, 05 Nov 2019 19:06:04 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:03 -0800 (PST)
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
Subject: [PATCH 00/50] Add log level to show_stack()
Date: Wed,  6 Nov 2019 03:04:51 +0000
Message-Id: <20191106030542.868541-1-dima@arista.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=jzPQRDte;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as
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

Ok, to the scary part: I've tested it on x86_64 and build tested on a
couple of architectures. Though, I can't cover all platforms so
I hope I'll have a couple of reports and than it'll soak in linux-next
for some time. In my opinion the variety of architectures shouldn't
stop general improvements.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-1-dima%40arista.com.
