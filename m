Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMXZ66AAMGQEQJG43QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79059311836
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 03:19:32 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id 32sf5426077plf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 18:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612577971; cv=pass;
        d=google.com; s=arc-20160816;
        b=WkfB5gzibCPscjdaaUKX3rD3SonFeH7cVtvCAW6VeJMmLRY28IwFzBhNYyafquLk1T
         JDwfrtt8LUddGh7wjRUuYPiyzW/0om+5FXBKLnRhbBwjpwIM+nanCKUVPyHhIbts0eVF
         ZpgKqnLm6HR3TiYDAHNEybebDya5NoLIVM/QgN2P3ucxaSsyRu0CFoc4+wIvx+nhQSi6
         qMVj0cnjnSXH3uICCZVUrYHoe6d4gEzS/2MCrIAhLTi78wJ6mM/PyWL7glNLOS5A9kN+
         I43xYGmFfkEUVz5coTXV1Wgw66OU19bXnEy3LfTPjK0vYaI2INC4cxExbYYNMVrw6nu4
         rA5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8U86emLqMcyLjVskj+s+M125OyWnkrcDO3KyEXm+eck=;
        b=L9QgcSgi9ERjYAX0UFDj9xT+xkmth01pl8PWHbk2f/H78XXhx/sd3sbxaVXTkgjMh3
         JjygQkoLl3cH321Als0VWNl4AFQBGlF3fcm+h3XSJh9W07vgkurHhMmeKqGntfjqqUNX
         NBe5XABIzE8O5AraBJ6Fs2qS9JVtnXe7varxEYnqtheu25nQFbLidSnAITFM9yE+kkR5
         UC8X54D5afhS7cdAc9gHHvzLMnHKQL/8bNKKet3FlPirheAH2lVpju6OUXnX52qwJVF8
         lCHiIv6jED6dY+y47C0jNyy5z5IIpNocUaHWQgKLYOUsuVfBt/JP9MlpmUF2kjLFON+F
         pQiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SmTeXrnC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8U86emLqMcyLjVskj+s+M125OyWnkrcDO3KyEXm+eck=;
        b=WsZr67ys8GFXQgSb8JqfDWFg213Dgo14poFG+LB2ctvcipDPuWBAL1a+Px9hCIC36y
         H2ZrVBgV+leTSOeLsV3ejVOfQoujqFusSllcBkVTHm/ts26ioqZtWKkN77gK4UFSPfwP
         T+mKbeh1CDi8yXFCEFPnfym90rJ1vdhuvoqHIhM+x5qh+R9/pj+w0jULR5Ji+FnJIa+z
         lmQdCypy0JtHAmuNkHxY6y4q3JKhfOzCvRCoLE5VIhxF5zH+JIeuQzvxLQEnoZDjV4VG
         1t6ONjQ8Gm+X+dkWoljOTyBsPND/bjU7ve8f0csIIT76Fbi044gNCB/PwT6W0Hzrv7xa
         FG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8U86emLqMcyLjVskj+s+M125OyWnkrcDO3KyEXm+eck=;
        b=H3G/JJ0wmk0XzbWaYmapIK//TIYFXeiFZ9Hy3XnYY5zo4EO0gYNHAvksWEvGfLwUsw
         3jSCIut6pyZURLDCmAd57AMcpXYTe3CHpvtAxn1GtbIfBTZT49MOXExqXxJ0DiW87yOD
         fwy7LRLeKCaIL5oKkvYHTzlyYy6oOL4QowxHjRfCx7Emkmf/Z/G6UdQu+kZBOcXMMUY6
         3o8gKTttzAE9XGRERDuHq9eh+p2avTBORFp8etm87dhpE1j4V1aYsWlmCatLhndzxc6Z
         /gvtdxfXUncMmQgk0/HoewQhEkAVpOSKxEQzjVUOhxizjj3tcvUNfWO9V9tMRuTjxiQo
         RHxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n8fZFW+hERwdk5UNYk1P+yugt3D3llDtz7gXjXdRAwTX8eVAP
	eSJEG7pfNzk/imLSt3XgcrI=
X-Google-Smtp-Source: ABdhPJx2Z/alUuxePQAxE9HkCy/+bB2j8USbTx5LUvs2G25w9Y3hlwqa98YLp8pQgfL8czeluDSDrQ==
X-Received: by 2002:a17:90a:7e94:: with SMTP id j20mr7111627pjl.8.1612577970874;
        Fri, 05 Feb 2021 18:19:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:296:: with SMTP id 144ls1312188pgc.4.gmail; Fri, 05 Feb
 2021 18:19:30 -0800 (PST)
X-Received: by 2002:a05:6a00:15c8:b029:1b7:d521:32e9 with SMTP id o8-20020a056a0015c8b02901b7d52132e9mr7386527pfu.22.1612577970239;
        Fri, 05 Feb 2021 18:19:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612577970; cv=none;
        d=google.com; s=arc-20160816;
        b=mnQ3YFyzQrEc2QWLFq6/xSVNwCiL+lyNxBZOhxBcnTFYAUq47mLbMATOD3zBAp/9sI
         Tr9RTZX5zezBJfOuXUB/Q/cY9wCEvskbohJvkdZ9LmboCtcDaR8ZdJuTo/aTuVUVwflW
         7BuWO/3sohvpCH/7e0USI/UpXJXqA1M3L16FEGnsod1+edLy7IvWSW/6eVYnV777P3ax
         msO5MsWSAjsBN4A5d+Vo8hei9kelsqT8qWAza0+0by7B98jb37jAgejTVlsJXOZ+iVdG
         GGI3ig/gzzjIVyipnjsPc1wzehzJ3uRj8o767NyyIXQTO/YlMCi92FvIzBJSp0h1wCRI
         KcaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rtxrNo6d0DmrIPvL3eI3Nymjk5wlPELB2pv08qWf2/U=;
        b=l0x/f7rFRcJKBqfqZishLzV8veK0MveXvp9zcfl5BRBfTeDvHwFPa6t1hhf4+q0SJx
         7YumugO7UzH7dmsgdv7nupsnt6E0CHNbgJUSWoXHCR6jXSRxiHqbY+g1XicD5jnrUY9q
         vlRuF0q7r49LsRAUuMEgJn9ppIw2C1byZhDmg6ju141GAr0tZGpRUn3nfrIBlyHmiuS/
         MSUXpD6oF5aXbX3+6aNJK+QNPr/Kjh6AnD3nipRXzSMP5X8ZaS6pRD6H6HBRPQdJOfbk
         2ftHWGmhkgJ6qp/8xgaU7yphguf9IgNOckoevURO3j2AaWTpf0F0ziCwvWQR2FdNWQZk
         kYxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SmTeXrnC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i10si639513pfa.6.2021.02.05.18.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 18:19:30 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9205164F97;
	Sat,  6 Feb 2021 02:19:29 +0000 (UTC)
Date: Fri, 5 Feb 2021 19:19:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>,
	Rachel Sibley <rasibley@redhat.com>,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	David Arcari <darcari@redhat.com>, Yi Zhang <yizhan@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210206021928.GA2219249@ubuntu-m3-large-x86>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com>
 <20210206014149.GA1121962@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210206014149.GA1121962@ubuntu-m3-large-x86>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SmTeXrnC;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 06:41:49PM -0700, Nathan Chancellor wrote:
> On Fri, Feb 05, 2021 at 08:48:39PM -0000, CKI Project wrote:
> > 
> > Hello,
> > 
> > We ran automated tests on a recent commit from this kernel tree:
> > 
> >        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >             Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' of git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci
> > 
> > The results of these automated tests are provided below.
> > 
> >     Overall result: FAILED (see details below)
> >              Merge: OK
> >            Compile: OK
> >  Selftests compile: FAILED
> >              Tests: PANICKED
> > 
> > All kernel binaries, config files, and logs are available for download here:
> > 
> >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/02/05/623168
> 
> I don't know if I am missing something or there was a mix up somewhere
> but all of the configuration files in that link show that GCC was used
> for all of these builds:
> 
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_aarch64_redhat%3A1095500/kernel-mainline.kernel.org-clang-aarch64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> 
> CONFIG_CC_VERSION_TEXT="aarch64-linux-gnu-gcc (GCC) 10.2.1 20200826 (Red Hat Cross 10.2.1-3)"
> CONFIG_CC_IS_GCC=y
> CONFIG_GCC_VERSION=100201
> CONFIG_LD_VERSION=235010000
> CONFIG_CLANG_VERSION=0
> CONFIG_LLD_VERSION=0
> 
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_ppc64le_redhat%3A1095501/kernel-mainline.kernel.org-clang-ppc64le-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> 
> CONFIG_CC_VERSION_TEXT="powerpc64le-linux-gnu-gcc (GCC) 10.2.1 20200826 (Red Hat Cross 10.2.1-3)"
> CONFIG_CC_IS_GCC=y
> CONFIG_GCC_VERSION=100201
> CONFIG_LD_VERSION=235010000
> CONFIG_CLANG_VERSION=0
> CONFIG_LLD_VERSION=0
> 
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_x86_64_redhat%3A1095499/kernel-mainline.kernel.org-clang-x86_64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> 
> CONFIG_CC_VERSION_TEXT="gcc (GCC) 11.0.0 20210130 (Red Hat 11.0.0-0)"
> CONFIG_CC_IS_GCC=y
> CONFIG_GCC_VERSION=110000
> CONFIG_LD_VERSION=235010000
> CONFIG_CLANG_VERSION=0
> CONFIG_LLD_VERSION=0
> 
> Cheers,
> Nathan
> 

I can see by booting the binary that the kernel was compiled with clang
and linked with lld though. However, I still cannot reproduce this
crash.

root@ubuntu-m3-large-x86:~# cat /proc/version
Linux version 5.11.0-rc6 (cki@runner-3uc3rmvr-project-2-concurrent-4lc6vt) (clang version 11.1.0 (Fedora 11.1.0-0.4.rc2.fc34), LLD 11.1.0) #1 SMP Fri Feb 5 00:21:48 UTC 2021
root@ubuntu-m3-large-x86:~# lsmod
Module                  Size  Used by
binfmt_misc            24576  1
intel_rapl_msr         20480  0
intel_rapl_common      32768  1 intel_rapl_msr
amd_energy             16384  0
crct10dif_pclmul       16384  1
crc32_pclmul           16384  0
crc32c_intel           24576  0
ghash_clmulni_intel    16384  0
snd_pcm               139264  0
snd_timer              45056  1 snd_pcm
snd                   106496  2 snd_timer,snd_pcm
joydev                 28672  0
soundcore              16384  1 snd
serio_raw              20480  0
pcspkr                 16384  0
virtio_net             65536  0
net_failover           28672  1 virtio_net
failover               16384  1 net_failover
ata_generic            16384  0
i2c_piix4              28672  0
pata_acpi              16384  0
floppy                 94208  0
qemu_fw_cfg            20480  0
bpf_preload            16384  0
ip_tables              32768  0
x_tables               53248  1 ip_tables
root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/proc/proc01 -m 128
proc01      0  TINFO  :  /proc/sys/fs/binfmt_misc/register: is write-only.
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/all/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/default/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/dummy0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ens2/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/erspan0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gre0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gretap0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb1/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6_vti0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6gre0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6tnl0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip_vti0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/lo/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/tunl0/stable_secret: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/kmsg: known issue: errno=EAGAIN/EWOULDBLOCK(11): Resource temporarily unavailable
proc01      0  TINFO  :  /proc/sysrq-trigger: is write-only.
proc01      0  TINFO  :  /proc/self/task/753/mem: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/self/task/753/clear_refs: is write-only.
proc01      0  TINFO  :  /proc/self/task/753/pagemap: reached maxmbytes (-m)
proc01      0  TINFO  :  /proc/self/mem: known issue: errno=EIO(5): Input/output error
proc01      0  TINFO  :  /proc/self/clear_refs: is write-only.
proc01      0  TINFO  :  /proc/self/pagemap: reached maxmbytes (-m)
proc01      1  TPASS  :  readproc() completed successfully, total read: 280264271 bytes, 3326 objs
root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/read_all/read_all -d /proc -q -r 3
read_all.c:446: TPASS: Finished reading files/fs/read_all/read_all -d /proc -q -r 3

Summary:
passed   1
failed   0
broken   0
skipped  0
warnings 0

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206021928.GA2219249%40ubuntu-m3-large-x86.
