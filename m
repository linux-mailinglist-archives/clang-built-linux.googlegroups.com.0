Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBOVS2H2QKGQENNBZV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0831C99FA
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 20:53:47 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id 9sf6881074pjz.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 11:53:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588877626; cv=pass;
        d=google.com; s=arc-20160816;
        b=GijIt4zK7vuvBsnuYR3CDqALqtpwz117L7L/knn6BOdsVqbLY276N6Tk3+YiECN+iW
         ExAXA9ZdeUujfSX7XwjI98c1vN3qlmByZNyNH6cMg4olMK+MEqsOcYtU124TdjFIfQ/E
         iMg3N6pazypkhA8MtJfuP78OmD/GsPEb/+BpCq7waAKy8eYVcxBo/21lcoixh2JmjfEV
         rv7wk7sIqLUCZgHu8GaJBHfPF7JDflK2HzrHrksAT3BmdXi6WKdAV6HoEQOoNah3vnvH
         z/7Z7d5oAN/cofeywNdlheZuIwgKiTJlJR8KBPp65gyQa/nF0M5AEH2mEeInwrEiIl40
         +ZzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=pCa92rYzsF62r97RV43f9pVeAFCeRkcFfm2iBw0ONBc=;
        b=CdOyiZFnOVKId6eLPux4atZnyy9CsUDrX7NrzHo/Hd1Z9LeMOjVFNkDlgUDWu/121z
         mqJtC5O4Vmd/nR7XfPmL8Sl/fov83BhLbc0M5rKVtjbnaMs5p7AL3tQ2HFqrysOR9v2K
         Hed3/l1TSW0c7cnGWbHFAFeY2Su6Q+p4DvqLUw/q9cbbacpCUqPDNaIKBbm0dODC4nth
         tkLxd6zNcLnEpDnPfSRwhDzjuepSXEzcQFhcrhZK5lW5nJ7vavefgEFKIpve8z9lMrzq
         6oPcq0u7eposPJLWa5VywO2Nu4eR9n6AkbUJteHDo4hVmUxUD9Oj4Sl2grpPGXU//nmM
         7xxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=AWpMVeNZ;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCa92rYzsF62r97RV43f9pVeAFCeRkcFfm2iBw0ONBc=;
        b=UzOAEdFBvWoNMvmJndDZoOSvdPRFXBha5O3EPuInnNVo6F1k4CHCwwva9/BtToEtEM
         zrJgCtki283jpXZGOIQi/jmWFU3GaNMLAZ2jrzbs46AoVrFJgp8ZOitONxdDuAVUZ36g
         Vy+ppQdlz0ey67o0Ie1eHHl3Z8O1i2NzALs9SNmuibpwBdFAK/nkof9Pe1J1kMnFhFAn
         UdQWKJBsfV4dV2E1jEaf09o5bGwVcU+wz4SZC8oDfILQOt2jc1Jlz0zFxf5F63WO8mQA
         2W9g14h0jHhq5sw34MZJ2/po6nxt1bYAXjiTalA/O601H2qs76OdfrVs3ONC00XfWSUu
         AkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCa92rYzsF62r97RV43f9pVeAFCeRkcFfm2iBw0ONBc=;
        b=Z5vGIEEQKKtngbh7Kj5qg/3I8VY7emZafkNSkmORQW4LE2husQanxL0hgE79oCstls
         QINxFx4TlHdkM387pooJXNcSmqWsSMTYECbFrskVw3Of8UiYAeixGHu9kz/lsStK9k+1
         vSZbr0rE8oJhBw+D2bO//lx+Nf6NoXXPEaPs6w4WUYy6iEKsUPGV6EIj+IylFWgSEpuf
         T3HF7p8PEgkgA8kT7aVhQJNzpHhvKwnK0JlUI7jRfDVLj9x+rnihfLOqlDniop3T1wOw
         zkx/R4LnT6OuOpIL3B9kWF9WelKZMDetFT3jXe/AFZ2OwLbkMdrUue3ddzD6WTgimqWV
         RxyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYWojI9H1FhtjZRgeY03W3KIrXqMpMhwiCHGFWA+ckjCrg6Ukxj
	OXPplfM1IvJutpy3RQxkuSU=
X-Google-Smtp-Source: APiQypIjIhlVKz2X0Bf7ChVIkYQOO0Vvphk5w+Jne8OKS52bVHl6UmeRyB0b0Jqlw7CFa33dFmmDWQ==
X-Received: by 2002:aa7:9689:: with SMTP id f9mr14994673pfk.24.1588877626503;
        Thu, 07 May 2020 11:53:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:81c8:: with SMTP id t191ls4364451pgd.10.gmail; Thu, 07
 May 2020 11:53:46 -0700 (PDT)
X-Received: by 2002:aa7:9a52:: with SMTP id x18mr14906233pfj.139.1588877626087;
        Thu, 07 May 2020 11:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588877626; cv=none;
        d=google.com; s=arc-20160816;
        b=MfChZzj6MIEZ8AJJ9NyNyxSBFb8cYBqxQsgoA5ZHHLANvxJ2/6WQFapIAPVeYIVJFH
         QFGkeefUXWNPiXcmif1LPsivJGZWmjrjWw77FUOD0SmKs2Z0D5AmIdlP9NA2z0snewMa
         4ByUc8cAJtTwSejbg5mSG7JPHUhUJzU9gJKEGHTss1QzJ+mkOKYOoxQChP1YHjKHOyoV
         aCDR7mjjqQwe1TjZU76GSdh7QPQBxbRnhyHn8cV+l7q3xpEcOMK//FK9wvc5+BQPnXq9
         6sn52ZkioIZEHtFkVlcotg0Gdhi8yCCygZmrsuZmzBe/AH/W7vv2B/GNfSznDijgKjky
         GtjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=HdnkYkSkwpLh+orrApa7Rm9CqGAa5Q8eU7irYvG3X2E=;
        b=BfkyPHiJxpPGcodx3CltxGDZkE4ttFkE9GEYW5po54bgaHaUtiJRjUMwms0usDbtBL
         l9RRWoNiuxlQW3+KLcr65Vrrx2rcONZaIuFg3xzkdrrtI6tkj5W7/sVOL7Psz96ieT/l
         o+jKOBS5MIptRz0aiKbybv+MGZVN+Ebz8pcEHk6+IHGTY1AoLPBJsJmhGTP1+NzfEE9K
         mzy6tIVhFINh7WwAP0yijgkebTqsRtQ983aQ79OjlNUMx6DnH0dq5MKvbSWdyBNKJwPF
         7RoOH773wBfyT8QLOhgKL7os6NvUl3Pvm0JPiRkeRWeRaIR03E0WtIw2p9iRkkQbScOx
         +RBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=AWpMVeNZ;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u131si513234pfc.6.2020.05.07.11.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 11:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id b188so7268190qkd.9
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 11:53:45 -0700 (PDT)
X-Received: by 2002:a05:620a:2fa:: with SMTP id a26mr8474627qko.295.1588877625313;
        Thu, 07 May 2020 11:53:45 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id q207sm146330qka.13.2020.05.07.11.53.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 11:53:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: Clang and UBSAN: member access within null pointer of type
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAKwvOdmMjwoTZFSp2DnzeKePxgczfOJyOH_T-vyzHGcm5cFXgA@mail.gmail.com>
Date: Thu, 7 May 2020 14:53:43 -0400
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>
Message-Id: <C3E33F8C-D9DF-4029-B03E-3E7DDFD572BF@lca.pw>
References: <CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw>
 <CAKwvOdmMjwoTZFSp2DnzeKePxgczfOJyOH_T-vyzHGcm5cFXgA@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=AWpMVeNZ;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On May 7, 2020, at 2:30 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Thu, May 7, 2020 at 6:42 AM Qian Cai <cai@lca.pw> wrote:
>> 
>> Running a Clang (9.0.1) build kernel with UBSAN generated a few warnings during boot,
> 
> Very cool, these reports are so nice! They hand you everything on a
> silver platter.  Thanks for testing/sending!  Let's take a look.
> 
>> 
>> [    0.000000] UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
>> [    0.000000] member access within null pointer of type 'struct acpi_table_fadt'
>> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc4-next-20200507 #2
>> [    0.000000] Call trace:
>> [    0.000000]  dump_backtrace+0x0/0x22c
>> [    0.000000]  show_stack+0x28/0x34
>> [    0.000000]  dump_stack+0x104/0x194
>> [    0.000000]  handle_null_ptr_deref+0xdc/0x10c
>> [    0.000000]  __ubsan_handle_type_mismatch_v1+0x64/0x78
>> [    0.000000]  acpi_tb_create_local_fadt+0x104/0x6ec
> 
> ok so acpi_tb_create_local_fadt() dereferenced a `null pointer of type
> 'struct acpi_table_fadt'` in null-ptr-deref in
> drivers/acpi/acpica/tbfadt.c:459.
> 
> That line number doesn't line up with linux-next; which tree was this?
> That will probably help track these down faster.

It is linux-next indeed as in the signature.

next-20200507

# ./scripts/faddr2line vmlinux acpi_tb_create_local_fadt+0x104/0x6ec
acpi_tb_create_local_fadt+0x104/0x6ec:
acpi_tb_convert_fadt at drivers/acpi/acpica/tbfadt.c:459
(inlined by) acpi_tb_create_local_fadt at drivers/acpi/acpica/tbfadt.c:388

This line,

        if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {

acpi_gbl_FADT was defined in,

.//include/acpi/acpixf.h:266:ACPI_GLOBAL(struct acpi_table_fadt, acpi_gbl_FADT);

#ifdef DEFINE_ACPI_GLOBALS
#define ACPI_GLOBAL(type,name) \
	extern type name; \
	type name



#define ACPI_INIT_GLOBAL(type,name,value) \
	type name=value



#else
#ifndef ACPI_GLOBAL
#define ACPI_GLOBAL(type,name) \
	extern type name
#endif



#ifndef ACPI_INIT_GLOBAL
#define ACPI_INIT_GLOBAL(type,name,value) \
	extern type name
#endif
#endif

I looks like DEFINE_ACPI_GLOBALS should be set in drivers/acpi/acpica/utglobal.c.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/C3E33F8C-D9DF-4029-B03E-3E7DDFD572BF%40lca.pw.
