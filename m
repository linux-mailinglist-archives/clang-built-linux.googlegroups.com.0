Return-Path: <clang-built-linux+bncBDY3NC743AGBBHHKSD7AKGQE7BPZTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id B78092C7C06
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 00:56:14 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id cq22sf121687pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 15:56:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606694173; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0QXHCWeJky7S62D7FE1IbWAz4shWb/PotrJsW5MCePYmCaXnjNk6VxWvhQclA287x
         X7+hk4TI1rGLfMrJwEebPO9zOc6lQgf+UKysD9nziWkYLL2dq2gXY/d5T26FB60SbJCE
         DN3ezy5bPdt9eIWL4VHH1EaBZxUEiJc1cLsz2l9XlfMAdIBbUGQ8m1AkHxxFU9l2gyBS
         WbE29c1uC/EfpIeBjg9bEH16YrP6Cs+hrvKgtIHCoUj1/rExJC1NKHqUUlAnMc25Bq2k
         AInh1bQNSKCpauQ1YPqMH8H43vziyMA81XQ8VtuWVJrJF7q69fKXanJ5UsKmrZoBrfv6
         GXtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=/60OlzboIdcP/JPo7HMT9mRSEyoQA36sbzELV0t2kV4=;
        b=c2kgllawwYPb8STrpOBCKqgiiOyK/EiAdd7qXtTXfpIP+VWkFj0YZ60nqqLIDFq6Wd
         lLt4gwVNlZclEpaFafQqm8Dol3rLG1Gjjx5EdRtqaTfsDfruiAsVx/QuBqMx2N84YCN9
         jBuj34nlrtnPQIitxd6Z6op3JKBFKwRitaKLi2WihsGvi016zCCkUgQApqzhHfnVGBBU
         edN3ZgussB3EpfeaG7CEokmoZ3hjCQRK6g8DrG9LCfMP1HTgAAq4FJ05b+/mFHlfcWsf
         EmeXmi3KNap/CKBRWULtKXxyRhZuCyYq5OBPoY3Di8G5B4TXTqEo4dXW6N/EGtLFvAq7
         TyiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/60OlzboIdcP/JPo7HMT9mRSEyoQA36sbzELV0t2kV4=;
        b=X4Y+rDmV1uyIhvLG/rLCx1NIHhaxybwsFjPwseShO5B3mNQBQk3uMhkBxz9VLJ6t0N
         F61wKuAKDrxsmjIjyEwthatGezm3dWtYO/mu1Cvum4Qy0tGRu8VMNxRpbbRf3Ww5RU6Z
         G/21VaB23qXMqNTLw+HenDAr5b0vGKARUUklDD8HjA9p8xfOnVEKsGhB48yaDc8bix2W
         aPBJD2hHdmKuP7rYqcvr9vfY5JbyIZ3zRNStzfK7WymkuVHNJxkIzYc7U5uBZ8MjDUuW
         xUxEJSFYFc0i5bSRL9RKj2WOCzwuqIHQWaypYXquUnQFAlhCHz9oYElVkm0pp62YuyD+
         w8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/60OlzboIdcP/JPo7HMT9mRSEyoQA36sbzELV0t2kV4=;
        b=LOg393GlBXfxk9x2iU8UuVHyYRKVFRsfJ2PaDBaHzDYStcjMkqdKH7uSvyqQmfxlvo
         4/HA0NJmV9C7W7/tGF68eTuQHnC3E7rPJXF/iv2O1ihzB9Dj6BGOt7iazyQSFBdPjaDA
         YsoUfV0hP8oBQRXgWhij9KkagaIOPKGooQlLZCFi2BAKjnrLYdamo1mTf63G6gjCxogx
         PnvJ3Cdyn/LElvIPTFtz5kACEa2nIkWgW4SJK1HfJsRTlB2/EBfhsdcjCYs6ytt/Ji5x
         5VqbcQbb0rUr05I/dhjDAW5qWX+Di/VJbkN6F2znbhvANhk702RImcSctdDHNPxtucGu
         3lkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qwaTVxmBLVGqBiTTxLJ4bienAirGrWVnSehCBEKWpsqDhdbZs
	T6CYdHAR+R4/lahiBcOHyQ4=
X-Google-Smtp-Source: ABdhPJw9+VwySwQim9/f9zJkqWq8PicFXqLII5DK8CFnTdo92KXd+XkcwsDJjUjSRKSBnxwOh6/otA==
X-Received: by 2002:a63:d45:: with SMTP id 5mr15481726pgn.0.1606694172906;
        Sun, 29 Nov 2020 15:56:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7556:: with SMTP id q83ls4000114pfc.3.gmail; Sun, 29 Nov
 2020 15:56:12 -0800 (PST)
X-Received: by 2002:a63:545:: with SMTP id 66mr2299390pgf.220.1606694171722;
        Sun, 29 Nov 2020 15:56:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606694171; cv=none;
        d=google.com; s=arc-20160816;
        b=Jgf6zl27ibXJJn1BZpWsFeEn4JbeMQDFceGom4eLnMK5G3iNbY0Idi8byJsHamvxwk
         ls4B+A5My/nGumWzs5+tuHRlO2z+cfcofCdzk0fXRl4/ihcLlC3DMsQJdPBMRWNajHPV
         JJ9ui+ovfR9UF/OJy5ttmEGP1LyR1k5zNNSmd234WOmMaaQ7dhP4A5Tj6QZwI0DA17u3
         6c1O2EnX+YF1HI6iiwn5x4tCFUb1Rz587xz3E5XrUjAAHOxvmfSktjzxf9UTQpVA62lx
         /iMhih2yEPhlqq6BjUhtxqM6yv9nsSnGEKNniQOHkbunY9R8lh/L1FSN3uXEM3b2Ipe6
         fptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=w9w3lPt1j0V7KU6ZwbDxb7d65rI86PRYdjgxnhuomZw=;
        b=b9ofIqcVFF04ujQGcMb24Y67KMtB+TKTspVYvq2gbZmIDXZRzIqFd9xQ9yC1murmwd
         lB1297cKoYfRLTHp6JgPmaHHseZpqmR+DP1wlpn8keEVDMxKl9098OrqVNFNjJ0VPtNW
         KJYc/Yec32wwdqMPK1UO11PF67hPlghXEG4dWNvZXzOvyT7PzD/IJNQkFLRbaI5Y7PM/
         4nPguumv/jlaBZtZy/LQue85hS7rsjDtl7St476fisVBMWxHr35oHsHxvnuLIv6IUxx5
         s+BjHn/x9DosDt7dYvOLD8S024RxnGYnNV6OQzJc+PCBBSKiKBFw0zOIKZNL710U1ysC
         utgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0005.hostedemail.com. [216.40.44.5])
        by gmr-mx.google.com with ESMTPS id nu3si1190679pjb.0.2020.11.29.15.56.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Nov 2020 15:56:11 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.5;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 79B5218224D78;
	Sun, 29 Nov 2020 23:56:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:355:379:599:857:966:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:1981:2194:2195:2196:2198:2199:2200:2201:2202:2393:2559:2562:2731:2828:2894:2896:2904:2910:2911:3138:3139:3140:3141:3142:3165:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4384:4385:4395:4425:5007:6248:6691:7903:7904:7974:8603:8957:9010:9036:9038:10004:10241:10848:11026:11232:11783:11914:12043:12050:12294:12295:12296:12297:12438:12555:12690:12712:12737:12740:12895:12986:13439:13869:13894:13972:14096:14097:14659:21064:21080:21094:21323:21324:21325:21433:21450:21451:21611:21622:21740:21773:21939:21966:21972:21987:21990:30003:30005:30009:30029:30045:30046:30051:30054:30055:30056:30062:30075:30080:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: scarf80_3510f8f2739d
X-Filterd-Recvd-Size: 145801
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sun, 29 Nov 2020 23:56:08 +0000 (UTC)
Message-ID: <fa2d0afb72bc4d754dfcd57ebbddb7c59783887c.camel@perches.com>
Subject: Re: linux-kernel: Unused static inline functions
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, Tom Rix <trix@redhat.com>
Date: Sun, 29 Nov 2020 15:56:06 -0800
In-Reply-To: <4603e761a5f39f4d97375e1e08d20d720c526341.camel@perches.com>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
	 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
	 <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
	 <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
	 <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>
	 <4603e761a5f39f4d97375e1e08d20d720c526341.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.5 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-03-06 at 16:07 -0800, Joe Perches wrote:
> On Fri, 2020-03-06 at 11:02 -0800, Nick Desaulniers wrote:
> > Turns out there are hundreds of unused static inline
> > > functions in kernel .h files.
> > >=20
> > > A trivial script to find some of them (with likely
> > > false positives as some might actually be used via ##
> > > token pasting mechanisms).

Hey Nick.  It's been several months.  Did you want to do
anything with this list?  Maybe your newbie minions?

> > > (and there's almost certainly a better way to do this
> > > =C2=A0too as it takes a _very_ long time to run)
> > >=20
> > > $ grep-2.5.4 -rP --include=3D*.h '^[ \t]*static\s+inline\s+(?:\w+\s+)=
{1,3}\w+[ \t]*\(' * | \
> > > =C2=A0=C2=A0grep -P -oh '\w+\s*\(' | \
> > > =C2=A0=C2=A0sort | uniq -c | sort -n | grep -P '^\s+1\b' | \
> > > =C2=A0=C2=A0sed -r -e 's/^\s+1\s+//' -e 's/\(//' | \
> > > =C2=A0=C2=A0while read line ; do \
> > > =C2=A0=C2=A0=C2=A0=C2=A0echo -n "$line: " ; git grep -w $line | wc -l=
 ; \
> > > =C2=A0=C2=A0done | \
> > > =C2=A0=C2=A0grep ": 1$"
> >=20
> > Please start sending patches to remove them and I'll review.  If this
> > is a good amount of work, I have newbies that are looking to
> > contribute and can help.
>=20
> Hello Nick.
>=20
> Here is the current result of a slightly different run
> excluding ALL_UPPERCASE variants.  Those upper case entries
> may have been autogenerated and are likely inappropriate to
> be removed.
>=20
> There are 1395 functions.  Some are uapi and those should
> likely not be removed.
>=20
> All of these below may be unused, defined but unused, but
> it's possible some may be used by token-pasting.
>=20
> arch/alpha/include/asm/io.h:183:static inline void generic_iounmap(volati=
le void __iomem *a)
> arch/alpha/include/asm/io.h:188:static inline int generic_is_ioaddr(unsig=
ned long a)
> arch/alpha/include/asm/io.h:193:static inline int generic_is_mmio(const v=
olatile void __iomem *a)
> arch/alpha/include/asm/pal.h:121:qemu_get_walltime(void)
> arch/alpha/include/asm/pal.h:135:qemu_get_alarm(void)
> arch/alpha/include/uapi/asm/fpu.h:109:ieee_fpcr_to_swcr(unsigned long fp)
> arch/arc/include/asm/unwind.h:117:arch_unwind_init_running(struct unwind_=
frame_info *info,
> arch/arc/include/asm/unwind.h:125:static inline int arch_unw_user_mode(co=
nst struct unwind_frame_info *info)
> arch/arc/include/asm/unwind.h:130:static inline void arch_unw_init_blocke=
d(struct unwind_frame_info *info)
> arch/arc/include/asm/unwind.h:135:static inline void arch_unw_init_frame_=
info(struct unwind_frame_info *info,
> arch/arm64/include/asm/arch_timer.h:67:static inline notrace u32 arch_tim=
er_read_cntp_tval_el0(void)
> arch/arm64/include/asm/arch_timer.h:72:static inline notrace u32 arch_tim=
er_read_cntv_tval_el0(void)
> arch/arm64/include/asm/arch_timer.h:77:static inline notrace u64 arch_tim=
er_read_cntpct_el0(void)
> arch/arm64/include/asm/arch_timer.h:82:static inline notrace u64 arch_tim=
er_read_cntvct_el0(void)
> arch/arm64/include/asm/atomic_ll_sc.h:237:__ll_sc_atomic64_dec_if_positiv=
e(atomic64_t *v)
> arch/arm64/include/asm/atomic_lse.h:111:static inline void __lse_atomic_s=
ub(int i, atomic_t *v)
> arch/arm64/include/asm/atomic_lse.h:233:static inline void __lse_atomic64=
_and(s64 i, atomic64_t *v)
> arch/arm64/include/asm/atomic_lse.h:264:static inline void __lse_atomic64=
_sub(s64 i, atomic64_t *v)
> arch/arm64/include/asm/atomic_lse.h:319:static inline s64 __lse_atomic64_=
dec_if_positive(atomic64_t *v)
> arch/arm64/include/asm/atomic_lse.h:80:static inline void __lse_atomic_an=
d(int i, atomic_t *v)
> arch/arm64/include/asm/kvm_emulate.h:140:static inline unsigned long vcpu=
_read_elr_el1(const struct kvm_vcpu *vcpu)
> arch/arm64/include/asm/kvm_emulate.h:197:static inline unsigned long vcpu=
_read_spsr(const struct kvm_vcpu *vcpu)
> arch/arm64/include/asm/module.h:65:static inline bool plt_entry_is_initia=
lized(const struct plt_entry *e)
> arch/arm64/include/asm/pgtable.h:191:static inline pte_t pte_mknoncont(pt=
e_t pte)
> arch/arm64/include/asm/pgtable.h:316:static inline pmd_t pud_pmd(pud_t pu=
d)
> arch/arm64/include/asm/uaccess.h:176:static inline void __uaccess_disable=
_hw_pan(void)
> arch/arm/include/asm/bitops.h:107:____atomic_test_and_change_bit(unsigned=
 int bit, volatile unsigned long *p)
> arch/arm/include/asm/bitops.h:36:static inline void ____atomic_set_bit(un=
signed int bit, volatile unsigned long *p)
> arch/arm/include/asm/bitops.h:48:static inline void ____atomic_clear_bit(=
unsigned int bit, volatile unsigned long *p)
> arch/arm/include/asm/bitops.h:60:static inline void ____atomic_change_bit=
(unsigned int bit, volatile unsigned long *p)
> arch/arm/include/asm/bitops.h:73:____atomic_test_and_set_bit(unsigned int=
 bit, volatile unsigned long *p)
> arch/arm/include/asm/bitops.h:90:____atomic_test_and_clear_bit(unsigned i=
nt bit, volatile unsigned long *p)
> arch/arm/include/asm/cputype.h:246:static inline unsigned int __attribute=
_const__ xscale_cpu_arch_version(void)
> arch/arm/include/asm/floppy.h:75:static inline void fd_scandrives (void)
> arch/arm/include/asm/kvm_emulate.h:144:static inline bool mode_has_spsr(s=
truct kvm_vcpu *vcpu)
> arch/arm/include/asm/kvm_emulate.h:45:static inline unsigned long vpcu_re=
ad_spsr(struct kvm_vcpu *vcpu)
> arch/arm/include/asm/pgtable.h:315:static inline pte_t pte_mknexec(pte_t =
pte)
> arch/arm/mach-ep93xx/ts72xx.h:62:static inline int board_is_ts7250(void)
> arch/arm/mach-ep93xx/ts72xx.h:67:static inline int board_is_ts7260(void)
> arch/arm/mach-ep93xx/ts72xx.h:77:static inline int board_is_ts7400(void)
> arch/arm/mach-ep93xx/ts72xx.h:82:static inline int is_max197_installed(vo=
id)
> arch/arm/mach-highbank/sysregs.h:45:static inline void highbank_set_pwr_s=
uspend(void)
> arch/arm/mach-highbank/sysregs.h:69:static inline void highbank_clear_pwr=
_request(void)
> arch/arm/mach-imx/mxc.h:88:static inline bool cpu_is_imx7d(void)
> arch/arm/mach-iop32x/iop3xx.h:249:static inline u32 read_tcr0(void)
> arch/arm/mach-iop32x/iop3xx.h:288:static inline u32 read_wdtcr(void)
> arch/arm/mach-mmp/pxa168.h:85:static inline int pxa168_add_pwm(int id)
> arch/arm/mach-mmp/pxa910.h:70:static inline int pxa910_add_pwm(int id)
> arch/arm/mach-omap1/include/mach/hardware.h:61:static inline u32 omap_cs0=
m_phys(void)
> arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h:148:s3c2443_get_m=
pll(unsigned int pllval, unsigned int baseclk)
> arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h:168:s3c2443_get_e=
pll(unsigned int pllval, unsigned int baseclk)
> arch/arm/mm/mm.h:33:static inline pte_t get_top_pte(unsigned long va)
> arch/arm/nwfpe/fpopcode.h:379:static inline unsigned int getTransferLengt=
h(const unsigned int opcode)
> arch/arm/nwfpe/fpopcode.h:424:static inline unsigned int getRoundingPreci=
sion(const unsigned int opcode)
> arch/arm/plat-samsung/include/plat/iic-core.h:31:static inline void s3c_i=
2c2_setname(char *name)
> arch/arm/plat-samsung/include/plat/sdhci.h:135:static inline void s3c_sdh=
ci_setname(int id, char *name)
> arch/hexagon/include/asm/hexagon_vm.h:101:static inline long __vmcache_dc=
cleaninva(unsigned long addr, unsigned long len)
> arch/hexagon/include/asm/hexagon_vm.h:106:static inline long __vmcache_ic=
inva(unsigned long addr, unsigned long len)
> arch/hexagon/include/asm/hexagon_vm.h:117:static inline long __vmcache_fe=
tch_cfg(unsigned long val)
> arch/hexagon/include/asm/hexagon_vm.h:124:static inline long __vmintop_no=
p(void)
> arch/hexagon/include/asm/hexagon_vm.h:134:static inline long __vmintop_gl=
obdis(long i)
> arch/hexagon/include/asm/hexagon_vm.h:149:static inline long __vmintop_af=
finity(long i, long cpu)
> arch/hexagon/include/asm/hexagon_vm.h:154:static inline long __vmintop_ge=
t(void)
> arch/hexagon/include/asm/hexagon_vm.h:159:static inline long __vmintop_pe=
ek(void)
> arch/hexagon/include/asm/hexagon_vm.h:164:static inline long __vmintop_st=
atus(long i)
> arch/hexagon/include/asm/hexagon_vm.h:174:static inline long __vmintop_cl=
ear(long i)
> arch/hexagon/include/asm/suspend.h:9:static inline int arch_prepare_suspe=
nd(void)
> arch/ia64/include/asm/pal.h:1007:ia64_pal_cache_write (pal_cache_line_id_=
u_t line_id, u64 physical_addr, u64 data)
> arch/ia64/include/asm/pal.h:1018:ia64_pal_copy_info (u64 copy_type, u64 n=
um_procs, u64 num_iopics,
> arch/ia64/include/asm/pal.h:1032:ia64_pal_copy_pal (u64 target_addr, u64 =
alloc_size, u64 processor, u64 *pal_proc_offset)
> arch/ia64/include/asm/pal.h:1058:ia64_pal_enter_ia32_env (ia32_env1, ia32=
_env2, ia32_env3)
> arch/ia64/include/asm/pal.h:1068:ia64_pal_fixed_addr (u64 *global_unique_=
addr)
> arch/ia64/include/asm/pal.h:1110:ia64_pal_get_hw_policy (u64 proc_num, u6=
4 *cur_policy, u64 *num_impacted,
> arch/ia64/include/asm/pal.h:1201:ia64_pal_mc_clear_log (u64 *pending_vect=
or)
> arch/ia64/include/asm/pal.h:1223:ia64_pal_mc_dynamic_state (u64 info_type=
, u64 dy_buffer, u64 *size)
> arch/ia64/include/asm/pal.h:1234:ia64_pal_mc_error_info (u64 info_index, =
u64 type_index, u64 *size, u64 *error_info)
> arch/ia64/include/asm/pal.h:1280:ia64_pal_mc_expected (u64 expected, u64 =
*previous)
> arch/ia64/include/asm/pal.h:1304:ia64_pal_mc_hw_tracking (u64 *status)
> arch/ia64/include/asm/pal.h:1318:ia64_pal_mc_register_mem (u64 physical_a=
ddr, u64 size, u64 *req_size)
> arch/ia64/include/asm/pal.h:1331:ia64_pal_mc_resume (u64 set_cmci, u64 sa=
ve_ptr)
> arch/ia64/include/asm/pal.h:1353:ia64_pal_mem_for_test (u64 *bytes_needed=
, u64 *alignment)
> arch/ia64/include/asm/pal.h:1392:ia64_pal_platform_addr (u64 type, u64 ph=
ysical_addr)
> arch/ia64/include/asm/pal.h:1401:ia64_pal_pmi_entrypoint (u64 sal_pmi_ent=
ry_addr)
> arch/ia64/include/asm/pal.h:1428:ia64_pal_proc_set_features (u64 feature_=
select)
> arch/ia64/include/asm/pal.h:1508:ia64_pal_set_hw_policy (u64 policy)
> arch/ia64/include/asm/pal.h:1520:ia64_pal_shutdown (void)
> arch/ia64/include/asm/pal.h:1529:ia64_pal_test_proc (u64 test_addr, u64 t=
est_size, u64 attributes, u64 *self_test_state)
> arch/ia64/include/asm/pal.h:1676:ia64_pal_vp_info (u64 feature_set, u64 v=
p_buffer, u64 *vp_info, u64 *vmm_id)
> arch/ia64/include/asm/pal.h:899:ia64_pal_bus_set_features (pal_bus_featur=
es_u_t feature_select)
> arch/ia64/include/asm/pal.h:926:ia64_pal_cache_prot_info (u64 cache_level=
, u64 cache_type, pal_cache_protection_info_t *prot)
> arch/ia64/include/asm/pal.h:962:ia64_pal_cache_init (u64 level, u64 cache=
_type, u64 rest)
> arch/ia64/include/asm/pal.h:984:ia64_pal_cache_read (pal_cache_line_id_u_=
t line_id, u64 physical_addr)
> arch/ia64/include/asm/processor.h:431:ia64_init_fpu (void) {
> arch/ia64/include/asm/processor.h:447:ia64_load_fpu (struct ia64_fpreg *f=
ph) {
> arch/ia64/include/asm/processor.h:498:ia64_itc (__u64 target_mask, __u64 =
vmaddr, __u64 pte,
> arch/ia64/include/asm/processor.h:597:ia64_set_unat (__u64 *unat, void *s=
pill_addr, unsigned long nat)
> arch/ia64/include/asm/processor.h:625:ia64_get_dbr (__u64 regnum)
> arch/ia64/include/asm/sal.h:675:ia64_sal_cache_init (void)
> arch/ia64/include/asm/sal.h:781:ia64_sal_register_physical_addr (u64 phys=
_entry, u64 phys_addr)
> arch/ia64/include/asm/sal.h:809:ia64_sal_update_pal (u64 param_buf, u64 s=
cratch_buf, u64 scratch_buf_size,
> arch/ia64/include/asm/unwind.h:156:unw_get_psp (struct unw_frame_info *in=
fo, unsigned long *valp)
> arch/ia64/include/asm/unwind.h:170:unw_get_cfm (struct unw_frame_info *in=
fo, unsigned long *valp)
> arch/ia64/include/asm/unwind.h:177:unw_set_cfm (struct unw_frame_info *in=
fo, unsigned long val)
> arch/m68k/include/asm/amipcmcia.h:27:static inline u_char pcmcia_read_sta=
tus(void)
> arch/m68k/include/asm/atariints.h:191:static inline void atari_clear_pend=
ing_irq( unsigned irq )
> arch/m68k/include/asm/atariints.h:198:static inline int atari_irq_pending=
( unsigned irq )
> arch/m68k/include/asm/cacheflush_mm.h:40:static inline void clear_cf_dcac=
he(unsigned long start, unsigned long end)
> arch/m68k/include/asm/mac_via.h:269:static inline int rbv_set_video_bpp(i=
nt bpp)
> arch/m68k/include/asm/mcf_pgtable.h:167:static inline void pgd_set(pgd_t =
*pgdp, pmd_t *pmdp)
> arch/microblaze/include/asm/pgtable.h:313:static inline void pte_uncache(=
pte_t pte) { pte_val(pte) |=3D _PAGE_NO_CACHE; }
> arch/microblaze/include/asm/pgtable.h:314:static inline void pte_cache(pt=
e_t pte)   { pte_val(pte) &=3D ~_PAGE_NO_CACHE; }
> arch/microblaze/include/asm/pgtable.h:414:static inline int ptep_test_and=
_clear_dirty(struct mm_struct *mm,
> arch/microblaze/include/asm/pgtable.h:434:static inline void ptep_mkdirty=
(struct mm_struct *mm,
> arch/mips/include/asm/emma/emma2rh.h:130:static inline void emma2rh_out16=
(u32 offset, u16 val)
> arch/mips/include/asm/emma/emma2rh.h:136:static inline u16 emma2rh_in16(u=
32 offset)
> arch/mips/include/asm/emma/emma2rh.h:148:static inline u8 emma2rh_in8(u32=
 offset)
> arch/mips/include/asm/ginvt.h:39:static inline void ginvt_va(unsigned lon=
g addr)
> arch/mips/include/asm/gio_device.h:42:static inline void gio_device_free(=
struct gio_device *dev)
> arch/mips/include/asm/lasat/lasat.h:186:static inline unsigned long lasat=
_flash_partition_start(int partno)
> arch/mips/include/asm/lasat/lasat.h:194:static inline unsigned long lasat=
_flash_partition_size(int partno)
> arch/mips/include/asm/mach-ar7/ar7.h:176:static inline void ar7_device_on=
(u32 bit)
> arch/mips/include/asm/mach-ar7/ar7.h:183:static inline void ar7_device_of=
f(u32 bit)
> arch/mips/include/asm/mach-ath79/ath79.h:61:static inline int soc_is_ar72=
41(void)
> arch/mips/include/asm/mach-ath79/ath79.h:66:static inline int soc_is_ar72=
42(void)
> arch/mips/include/asm/mach-au1x00/au1000_dma.h:221:static inline int dma_=
halted(unsigned int dmanr)
> arch/mips/include/asm/mach-au1x00/au1000_dma.h:294:static inline void set=
_dma_fifo_addr(unsigned int dmanr, unsigned int a)
> arch/mips/include/asm/mach-au1x00/au1000_dma.h:420:static inline int get_=
dma_done_irq(unsigned int dmanr)
> arch/mips/include/asm/mach-au1x00/gpio-au1000.h:467:static inline int alc=
hemy_gpio_direction_input(int gpio)
> arch/mips/include/asm/mach-au1x00/gpio-au1000.h:496:static inline int alc=
hemy_gpio_is_valid(int gpio)
> arch/mips/include/asm/mach-au1x00/gpio-au1000.h:503:static inline int alc=
hemy_gpio_cansleep(int gpio)
> arch/mips/include/asm/mach-au1x00/gpio-au1000.h:508:static inline int alc=
hemy_gpio_to_irq(int gpio)
> arch/mips/include/asm/mach-au1x00/gpio-au1000.h:515:static inline int alc=
hemy_irq_to_gpio(int irq)
> arch/mips/include/asm/mach-au1x00/gpio-au1300.h:107:static inline int au1=
300_gpio_getinitlvl(unsigned int gpio)
> arch/mips/include/asm/mach-jz4740/timer.h:100:static inline void jz4740_t=
imer_ack_full(unsigned int timer)
> arch/mips/include/asm/mach-jz4740/timer.h:105:static inline void jz4740_t=
imer_irq_full_enable(unsigned int timer)
> arch/mips/include/asm/mach-jz4740/timer.h:111:static inline void jz4740_t=
imer_irq_full_disable(unsigned int timer)
> arch/mips/include/asm/mach-jz4740/timer.h:65:static inline bool jz4740_ti=
mer_is_enabled(unsigned int timer)
> arch/mips/include/asm/mach-jz4740/timer.h:95:static inline uint16_t jz474=
0_timer_get_count(unsigned int timer)
> arch/mips/include/asm/mach-loongson64/loongson_regs.h:138:static inline u=
64 csr_readq(u32 reg)
> arch/mips/include/asm/mach-loongson64/loongson_regs.h:169:static inline v=
oid csr_writeq(u64 val, u32 reg)
> arch/mips/include/asm/mach-loongson64/loongson_regs.h:211:static inline u=
64 drdtime(void)
> arch/mips/include/asm/mach-pmcs-msp71xx/msp_gpio_macros.h:200:static inli=
ne enum msp_gpio_data msp_gpio_pin_get(unsigned int gpio)
> arch/mips/include/asm/mach-pmcs-msp71xx/msp_gpio_macros.h:278:static inli=
ne void msp_gpio_pin_lo(unsigned int gpio)
> arch/mips/include/asm/mach-pmcs-msp71xx/msp_gpio_macros.h:284:static inli=
ne void msp_gpio_pin_toggle(unsigned int gpio)
> arch/mips/include/asm/mach-pmcs-msp71xx/msp_gpio_macros.h:290:static inli=
ne enum msp_gpio_mode msp_gpio_pin_get_mode(unsigned int gpio)
> arch/mips/include/asm/mach-pnx833x/gpio.h:153:static inline void pnx833x_=
gpio_clear_irq(unsigned int pin)
> arch/mips/include/asm/mach-pnx833x/gpio.h:75:static inline int pnx833x_gp=
io_read(unsigned int pin)
> arch/mips/include/asm/mach-ralink/mt7620.h:133:static inline int mt7620_g=
et_eco(void)
> arch/mips/include/asm/mach-rc32434/dma_v.h:26:static inline int rc32434_h=
alt_dma(struct dma_reg *ch)
> arch/mips/include/asm/mach-rc32434/dma_v.h:42:static inline void rc32434_=
start_dma(struct dma_reg *ch, u32 dma_addr)
> arch/mips/include/asm/mach-rc32434/dma_v.h:48:static inline void rc32434_=
chain_dma(struct dma_reg *ch, u32 dma_addr)
> arch/mips/include/asm/mc146818-time.h:31:static inline int mc146818_set_r=
tc_mmss(unsigned long nowtime)
> arch/mips/include/asm/mipsregs.h:2755:static inline void guest_tlb_write_=
random(void)
> arch/mips/include/asm/mipsregs.h:2768:static inline void guest_tlbinvf(vo=
id)
> arch/mips/include/asm/netlogic/haldefs.h:129:nlm_read_reg_xkphys(uint64_t=
 base, uint32_t reg)
> arch/mips/include/asm/netlogic/haldefs.h:135:nlm_write_reg_xkphys(uint64_=
t base, uint32_t reg, uint32_t val)
> arch/mips/include/asm/netlogic/haldefs.h:141:nlm_read_reg64_xkphys(uint64=
_t base, uint32_t reg)
> arch/mips/include/asm/netlogic/haldefs.h:147:nlm_write_reg64_xkphys(uint6=
4_t base, uint32_t reg, uint64_t val)
> arch/mips/include/asm/netlogic/xlp-hal/pic.h:281:nlm_pic_write_timer(uint=
64_t base, int timer, uint64_t value)
> arch/mips/include/asm/netlogic/xlp-hal/uart.h:121:nlm_uart_outbyte(uint64=
_t base, char c)
> arch/mips/include/asm/netlogic/xlp-hal/uart.h:135:nlm_uart_inbyte(uint64_=
t base)
> arch/mips/include/asm/netlogic/xlr/fmn.h:228:static inline void nlm_msgwa=
it(unsigned int mask)
> arch/mips/include/asm/netlogic/xlr/pic.h:216:nlm_irt_to_irq(int irt)
> arch/mips/include/asm/nile4.h:210:static inline void nile4_out32(u32 offs=
et, u32 val)
> arch/mips/include/asm/nile4.h:216:static inline u32 nile4_in32(u32 offset=
)
> arch/mips/include/asm/nile4.h:223:static inline void nile4_out16(u32 offs=
et, u16 val)
> arch/mips/include/asm/nile4.h:229:static inline u16 nile4_in16(u32 offset=
)
> arch/mips/include/asm/nile4.h:236:static inline void nile4_out8(u32 offse=
t, u8 val)
> arch/mips/include/asm/nile4.h:242:static inline u8 nile4_in8(u32 offset)
> arch/mips/include/asm/octeon/cvmx-cmd-queue.h:326:static inline cvmx_cmd_=
queue_result_t cvmx_cmd_queue_write(cvmx_cmd_queue_id_t
> arch/mips/include/asm/octeon/cvmx-fau.h:170:static inline int64_t cvmx_fa=
u_fetch_and_add64(cvmx_fau_reg_64_t reg,
> arch/mips/include/asm/octeon/cvmx-fau.h:200:static inline int16_t cvmx_fa=
u_fetch_and_add16(cvmx_fau_reg_16_t reg,
> arch/mips/include/asm/octeon/cvmx-fau.h:214:static inline int8_t cvmx_fau=
_fetch_and_add8(cvmx_fau_reg_8_t reg, int8_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:233:cvmx_fau_tagwait_fetch_and_ad=
d64(cvmx_fau_reg_64_t reg, int64_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:257:cvmx_fau_tagwait_fetch_and_ad=
d32(cvmx_fau_reg_32_t reg, int32_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:281:cvmx_fau_tagwait_fetch_and_ad=
d16(cvmx_fau_reg_16_t reg, int16_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:304:cvmx_fau_tagwait_fetch_and_ad=
d8(cvmx_fau_reg_8_t reg, int8_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:363:static inline void cvmx_fau_a=
sync_fetch_and_add64(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:402:static inline void cvmx_fau_a=
sync_fetch_and_add16(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:420:static inline void cvmx_fau_a=
sync_fetch_and_add8(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:443:static inline void cvmx_fau_a=
sync_tagwait_fetch_and_add64(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:466:static inline void cvmx_fau_a=
sync_tagwait_fetch_and_add32(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:489:static inline void cvmx_fau_a=
sync_tagwait_fetch_and_add16(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:511:static inline void cvmx_fau_a=
sync_tagwait_fetch_and_add8(uint64_t scraddr,
> arch/mips/include/asm/octeon/cvmx-fau.h:526:static inline void cvmx_fau_a=
tomic_add64(cvmx_fau_reg_64_t reg, int64_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:551:static inline void cvmx_fau_a=
tomic_add16(cvmx_fau_reg_16_t reg, int16_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:563:static inline void cvmx_fau_a=
tomic_add8(cvmx_fau_reg_8_t reg, int8_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:576:static inline void cvmx_fau_a=
tomic_write64(cvmx_fau_reg_64_t reg, int64_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:601:static inline void cvmx_fau_a=
tomic_write16(cvmx_fau_reg_16_t reg, int16_t value)
> arch/mips/include/asm/octeon/cvmx-fau.h:613:static inline void cvmx_fau_a=
tomic_write8(cvmx_fau_reg_8_t reg, int8_t value)
> arch/mips/include/asm/octeon/cvmx-fpa.h:131:static inline int cvmx_fpa_is=
_member(uint64_t pool, void *ptr)
> arch/mips/include/asm/octeon/cvmx-fpa.h:202:static inline void cvmx_fpa_a=
sync_alloc(uint64_t scr_addr, uint64_t pool)
> arch/mips/include/asm/octeon/cvmx-fpa.h:226:static inline void cvmx_fpa_f=
ree_nosync(void *ptr, uint64_t pool,
> arch/mips/include/asm/octeon/cvmx.h:308:static inline void cvmx_read_csr_=
async(uint64_t scraddr, uint64_t csr_addr)
> arch/mips/include/asm/octeon/cvmx.h:439:static inline uint64_t cvmx_get_c=
ycle_global(void)
> arch/mips/include/asm/octeon/cvmx-pip.h:316:static inline void cvmx_pip_c=
onfig_watcher(uint64_t watcher,
> arch/mips/include/asm/octeon/cvmx-pip.h:337:static inline void cvmx_pip_c=
onfig_vlan_qos(uint64_t vlan_priority,
> arch/mips/include/asm/octeon/cvmx-pip.h:352:static inline void cvmx_pip_c=
onfig_diffserv_qos(uint64_t diffserv, uint64_t qos)
> arch/mips/include/asm/octeon/cvmx-pip.h:459:static inline void cvmx_pip_c=
onfig_crc(uint64_t interface,
> arch/mips/include/asm/octeon/cvmx-pip.h:486:static inline void cvmx_pip_t=
ag_mask_clear(uint64_t mask_index)
> arch/mips/include/asm/octeon/cvmx-pow.h:1403:static inline enum cvmx_pow_=
tag_type cvmx_pow_work_request_null_rd(void)
> arch/mips/include/asm/octeon/cvmx-pow.h:1511:static inline uint64_t cvmx_=
pow_work_invalid(struct cvmx_wqe *wqe_ptr)
> arch/mips/include/asm/octeon/cvmx-pow.h:1598:static inline void cvmx_pow_=
tag_sw(uint32_t tag,
> arch/mips/include/asm/octeon/cvmx-pow.h:1851:static inline void cvmx_pow_=
set_group_mask(uint64_t core_num, uint64_t mask)
> arch/mips/include/asm/octeon/cvmx-pow.h:1873:static inline void cvmx_pow_=
set_priority(uint64_t core_num,
> arch/mips/include/asm/octeon/cvmx-pow.h:2035:static inline void cvmx_pow_=
tag_sw_desched(uint32_t tag,
> arch/mips/include/asm/octeon/cvmx-pow.h:2060:static inline void cvmx_pow_=
desched(uint64_t no_sched)
> arch/mips/include/asm/octeon/cvmx-pow.h:2150:static inline uint32_t cvmx_=
pow_tag_compose(uint64_t sw_bits, uint64_t hw_bits)
> arch/mips/include/asm/octeon/cvmx-pow.h:2165:static inline uint32_t cvmx_=
pow_tag_get_sw_bits(uint64_t tag)
> arch/mips/include/asm/octeon/cvmx-pow.h:2180:static inline uint32_t cvmx_=
pow_tag_get_hw_bits(uint64_t tag)
> arch/mips/include/asm/octeon/cvmx-scratch.h:110:static inline void cvmx_s=
cratch_write16(uint64_t address, uint64_t value)
> arch/mips/include/asm/octeon/cvmx-scratch.h:122:static inline void cvmx_s=
cratch_write32(uint64_t address, uint64_t value)
> arch/mips/include/asm/octeon/cvmx-scratch.h:51:static inline uint8_t cvmx=
_scratch_read8(uint64_t address)
> arch/mips/include/asm/octeon/cvmx-scratch.h:63:static inline uint16_t cvm=
x_scratch_read16(uint64_t address)
> arch/mips/include/asm/octeon/cvmx-scratch.h:75:static inline uint32_t cvm=
x_scratch_read32(uint64_t address)
> arch/mips/include/asm/octeon/cvmx-scratch.h:98:static inline void cvmx_sc=
ratch_write8(uint64_t address, uint64_t value)
> arch/mips/include/asm/octeon/cvmx-spi.h:77:static inline int cvmx_spi_is_=
spi_interface(int interface)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:103:static inline unsigned i=
nt cvmx_spinlock_trylock(cvmx_spinlock_t *lock)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:161:static inline void cvmx_=
spinlock_bit_lock(uint32_t *word)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:193:static inline unsigned i=
nt cvmx_spinlock_bit_trylock(uint32_t *word)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:225:static inline void cvmx_=
spinlock_bit_unlock(uint32_t *word)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:63:static inline void cvmx_s=
pinlock_init(cvmx_spinlock_t *lock)
> arch/mips/include/asm/octeon/cvmx-spinlock.h:74:static inline int cvmx_sp=
inlock_locked(cvmx_spinlock_t *lock)
> arch/mips/include/asm/octeon/cvmx-wqe.h:598:static inline int cvmx_wqe_ge=
t_port(struct cvmx_wqe *work)
> arch/mips/include/asm/r4kcache.h:100:static inline void flush_scache_line=
(unsigned long addr)
> arch/mips/include/asm/r4kcache.h:184:static inline int protected_writebac=
k_scache_line(unsigned long addr)
> arch/mips/include/asm/r4kcache.h:67:static inline void flush_scache_line_=
indexed(unsigned long addr)
> arch/mips/include/asm/r4kcache.h:72:static inline void flush_icache_line(=
unsigned long addr)
> arch/mips/include/asm/r4kcache.h:85:static inline void flush_dcache_line(=
unsigned long addr)
> arch/mips/include/asm/r4kcache.h:90:static inline void invalidate_dcache_=
line(unsigned long addr)
> arch/mips/include/asm/r4kcache.h:95:static inline void invalidate_scache_=
line(unsigned long addr)
> arch/mips/include/asm/uasm.h:254:static inline void uasm_i_drotr_safe(u32=
 **p, unsigned int a1,
> arch/mips/include/asm/uasm.h:281:static inline void uasm_i_dsra_safe(u32 =
**p, unsigned int a1,
> arch/mips/math-emu/ieee754dp.h:31:static inline int ieee754dp_finite(unio=
n ieee754dp x)
> arch/mips/math-emu/ieee754.h:172:static inline unsigned int ieee754_getrm=
(void)
> arch/mips/math-emu/ieee754.h:177:static inline unsigned int ieee754_setrm=
(unsigned int rm)
> arch/mips/math-emu/ieee754.h:185:static inline unsigned int ieee754_getcx=
(void)
> arch/mips/math-emu/ieee754.h:200:static inline unsigned int ieee754_getsx=
(void)
> arch/mips/math-emu/ieee754.h:207:static inline unsigned int ieee754_clrsx=
(void)
> arch/mips/math-emu/ieee754.h:214:static inline int ieee754_sxtest(unsigne=
d int n)
> arch/mips/math-emu/ieee754int.h:33:static inline int ieee754_setandtestcx=
(const unsigned int x)
> arch/mips/math-emu/ieee754sp.h:31:static inline int ieee754sp_finite(unio=
n ieee754sp x)
> arch/nds32/include/asm/pgtable.h:312:static inline pmd_t __mk_pmd(pte_t *=
 ptep, unsigned long prot)
> arch/openrisc/include/asm/spr.h:30:static inline unsigned long mfspr_off(=
unsigned long add, unsigned long offset)
> arch/parisc/include/asm/io.h:114:static inline void gsc_writeq(unsigned l=
ong long val, unsigned long addr)
> arch/parisc/include/asm/io.h:71:static inline unsigned long long gsc_read=
q(unsigned long addr)
> arch/parisc/include/asm/ropes.h:237:static inline int agp_mode_mercury(vo=
id __iomem *hpa) {
> arch/parisc/include/uapi/asm/swab.h:21:static inline __attribute_const__ =
__u32 __arch_swab24(__u32 x)
> arch/powerpc/include/asm/book3s/64/mmu-hash.h:294:static inline unsigned =
long hpte_page_size(unsigned long h, unsigned long l)
> arch/powerpc/include/asm/book3s/64/mmu-hash.h:299:static inline unsigned =
long hpte_base_page_size(unsigned long h, unsigned long l)
> arch/powerpc/include/asm/cpm2.h:123:static inline void cpm2_fastbrg(uint =
brg, uint rate, int div16)
> arch/powerpc/include/asm/dbell.h:61:static inline void ppc_msgclr(enum pp=
c_dbell type)
> arch/powerpc/include/asm/disassemble.h:29:static inline unsigned int get_=
dcrn(u32 inst)
> arch/powerpc/include/asm/disassemble.h:59:static inline unsigned int get_=
rc(u32 inst)
> arch/powerpc/include/asm/disassemble.h:64:static inline unsigned int get_=
ws(u32 inst)
> arch/powerpc/include/asm/disassemble.h:79:static inline unsigned int get_=
tx_or_sx(u32 inst)
> arch/powerpc/include/asm/epapr_hcalls.h:521:static inline long epapr_hype=
rcall0(unsigned int nr)
> arch/powerpc/include/asm/epapr_hcalls.h:529:static inline long epapr_hype=
rcall1(unsigned int nr, unsigned long p1)
> arch/powerpc/include/asm/epapr_hcalls.h:538:static inline long epapr_hype=
rcall2(unsigned int nr, unsigned long p1,
> arch/powerpc/include/asm/epapr_hcalls.h:549:static inline long epapr_hype=
rcall3(unsigned int nr, unsigned long p1,
> arch/powerpc/include/asm/epapr_hcalls.h:561:static inline long epapr_hype=
rcall4(unsigned int nr, unsigned long p1,
> arch/powerpc/include/asm/fsl_hcalls.h:640:static inline unsigned int fh_p=
artition_stop_dma(unsigned int handle)
> arch/powerpc/include/asm/fs_pd.h:44:static inline int uart_clock(void)
> arch/powerpc/include/asm/io.h:352:static inline void __raw_rm_writew(u16 =
val, volatile void __iomem *paddr)
> arch/powerpc/include/asm/io.h:375:static inline u8 __raw_rm_readb(volatil=
e void __iomem *paddr)
> arch/powerpc/include/asm/macio.h:70:static inline unsigned long macio_res=
ource_end(struct macio_dev *dev, int resource_no)
> arch/powerpc/include/asm/mpic_msgr.h:110:static inline void mpic_msgr_set=
_destination(struct mpic_msgr *msgr,
> arch/powerpc/include/asm/mpic_msgr.h:124:static inline int mpic_msgr_get_=
irq(struct mpic_msgr *msgr)
> arch/powerpc/include/asm/mpic_msgr.h:73:static inline void mpic_msgr_writ=
e(struct mpic_msgr *msgr, u32 message)
> arch/powerpc/include/asm/mpic_msgr.h:97:static inline void mpic_msgr_clea=
r(struct mpic_msgr *msgr)
> arch/powerpc/include/asm/plpar_wrappers.h:138:static inline long plpar_pt=
e_read(unsigned long flags, unsigned long ptex,
> arch/powerpc/include/asm/plpar_wrappers.h:14:static inline long poll_pend=
ing(void)
> arch/powerpc/include/asm/rtas.h:187:void rtas_set_disposition_recovered(s=
truct rtas_error_log *elog)
> arch/powerpc/include/asm/sections.h:41:static inline int in_kernel_text(u=
nsigned long addr)
> arch/powerpc/include/asm/smp.h:179:static inline void inhibit_secondary_o=
nlining(void) {}
> arch/powerpc/include/asm/smp.h:180:static inline void uninhibit_secondary=
_onlining(void) {}
> arch/powerpc/include/asm/xive.h:151:static inline void xive_kexec_teardow=
n_cpu(int secondary) { }
> arch/powerpc/kvm/e500.h:242:static inline unsigned int get_tlb_nv_bit(con=
st struct kvm_vcpu *vcpu)
> arch/powerpc/platforms/8xx/pic.h:14:static inline uint mk_int_int_mask(ui=
nt mask)
> arch/riscv/include/asm/ptrace.h:93:static inline void frame_pointer_set(s=
truct pt_regs *regs,
> arch/riscv/include/asm/sbi.h:90:static inline void sbi_remote_sfence_vma_=
asid(const unsigned long *hart_mask,
> arch/s390/include/asm/atomic_ops.h:138:static inline long __atomic64_cmpx=
chg_bool(long *ptr, long old, long new)
> arch/s390/include/asm/bitops.h:278:static inline void __set_bit_inv(unsig=
ned long nr, volatile unsigned long *ptr)
> arch/s390/include/asm/bitops.h:283:static inline void __clear_bit_inv(uns=
igned long nr, volatile unsigned long *ptr)
> arch/s390/include/asm/cpu_mcf.h:106:static inline int kernel_cpumcf_begin=
(void)
> arch/s390/include/asm/cpu_mcf.h:114:static inline void kernel_cpumcf_end(=
void)
> arch/s390/include/asm/ftrace.h:64:static inline int is_ftrace_nop(struct =
ftrace_insn *insn)
> arch/s390/include/asm/kvm_para.h:146:static inline long kvm_hypercall5(un=
signed long nr, unsigned long p1,
> arch/s390/include/asm/kvm_para.h:175:static inline long kvm_hypercall6(un=
signed long nr, unsigned long p1,
> arch/s390/include/asm/pci_dma.h:134:static inline void invalidate_table_e=
ntry(unsigned long *entry)
> arch/s390/include/asm/pci_dma.h:176:static inline int entry_isprotected(u=
nsigned long entry)
> arch/s390/include/asm/timex.h:52:static inline void store_clock_comparato=
r(__u64 *time)
> arch/sh/include/asm/irq.h:39:static inline int generic_irq_demux(int irq)
> arch/sparc/include/asm/fpumacro.h:20:static inline unsigned long fprs_rea=
d(void)
> arch/sparc/include/asm/mbus.h:91:static inline int get_modid(void)
> arch/sparc/include/asm/mxcc.h:102:static inline void mxcc_set_stream_dst(=
unsigned long *paddr)
> arch/sparc/include/asm/mxcc.h:89:static inline void mxcc_set_stream_src(u=
nsigned long *paddr)
> arch/sparc/include/asm/obio.h:140:static inline unsigned int bw_get_ctrl(=
int cpu)
> arch/sparc/include/asm/obio.h:151:static inline void bw_set_ctrl(int cpu,=
 unsigned int ctrl)
> arch/sparc/include/asm/pgtable_32.h:373:__get_phys (unsigned long addr)
> arch/sparc/include/asm/pgtable_32.h:385:__get_iospace (unsigned long addr=
)
> arch/sparc/include/asm/pgtable_64.h:406:static inline bool is_default_hug=
etlb_pte(pte_t pte)
> arch/sparc/include/asm/pgtable_64.h:435:static inline bool is_hugetlb_pte=
(pte_t pte)
> arch/sparc/include/asm/ross.h:100:static inline unsigned int get_ross_icr=
(void)
> arch/sparc/include/asm/ross.h:175:static inline void hyper_flush_cache_pa=
ge(unsigned long page)
> arch/sparc/include/asm/sbi.h:106:static inline void set_sbi_ctl(int devid=
, int cfgno, int cfg)
> arch/sparc/include/asm/sbi.h:95:static inline int get_sbi_ctl(int devid, =
int cfgno)
> arch/sparc/include/asm/setup.h:23:static inline int con_is_present(void)
> arch/sparc/include/asm/spitfire.h:133:static inline unsigned long spitfir=
e_get_dtlb_tag(int entry)
> arch/sparc/include/asm/spitfire.h:166:static inline unsigned long spitfir=
e_get_itlb_tag(int entry)
> arch/sparc/include/asm/spitfire.h:185:static inline void spitfire_flush_d=
tlb_nucleus_page(unsigned long page)
> arch/sparc/include/asm/spitfire.h:193:static inline void spitfire_flush_i=
tlb_nucleus_page(unsigned long page)
> arch/sparc/include/asm/spitfire.h:232:static inline unsigned long cheetah=
_get_ldtlb_data(int entry)
> arch/sparc/include/asm/spitfire.h:245:static inline unsigned long cheetah=
_get_litlb_data(int entry)
> arch/sparc/include/asm/spitfire.h:258:static inline unsigned long cheetah=
_get_ldtlb_tag(int entry)
> arch/sparc/include/asm/spitfire.h:270:static inline unsigned long cheetah=
_get_litlb_tag(int entry)
> arch/sparc/include/asm/spitfire.h:282:static inline void cheetah_put_ldtl=
b_data(int entry, unsigned long data)
> arch/sparc/include/asm/spitfire.h:292:static inline void cheetah_put_litl=
b_data(int entry, unsigned long data)
> arch/sparc/include/asm/spitfire.h:302:static inline unsigned long cheetah=
_get_dtlb_data(int entry, int tlb)
> arch/sparc/include/asm/spitfire.h:314:static inline unsigned long cheetah=
_get_dtlb_tag(int entry, int tlb)
> arch/sparc/include/asm/spitfire.h:324:static inline void cheetah_put_dtlb=
_data(int entry, unsigned long data, int tlb)
> arch/sparc/include/asm/spitfire.h:334:static inline unsigned long cheetah=
_get_itlb_data(int entry)
> arch/sparc/include/asm/spitfire.h:347:static inline unsigned long cheetah=
_get_itlb_tag(int entry)
> arch/sparc/include/asm/spitfire.h:357:static inline void cheetah_put_itlb=
_data(int entry, unsigned long data)
> arch/sparc/include/asm/swift.h:56:static inline void swift_flush_icache(v=
oid)
> arch/sparc/include/asm/swift.h:64:static inline void swift_idflash_clear(=
void)
> arch/sparc/include/asm/swift.h:83:static inline void swift_flush_segment(=
unsigned long addr)
> arch/sparc/include/asm/swift.h:91:static inline void swift_flush_region(u=
nsigned long addr)
> arch/sparc/include/asm/swift.h:99:static inline void swift_flush_context(=
void)
> arch/sparc/include/asm/viking.h:114:static inline void viking_flush_icach=
e(void)
> arch/sparc/include/asm/viking.h:122:static inline void viking_flush_dcach=
e(void)
> arch/sparc/include/asm/viking.h:130:static inline void viking_unlock_icac=
he(void)
> arch/sparc/include/asm/viking.h:138:static inline void viking_unlock_dcac=
he(void)
> arch/sparc/include/asm/viking.h:164:static inline void viking_get_dcache_=
ptag(int set, int block,
> arch/sparc/include/asm/viking.h:213:static inline unsigned long viking_hw=
probe(unsigned long vaddr)
> arch/um/include/asm/processor-generic.h:61:static inline void mm_copy_seg=
ments(struct mm_struct *from_mm,
> arch/um/include/shared/os.h:104:static inline struct openflags of_create(=
struct openflags flags)
> arch/um/include/shared/os.h:110:static inline struct openflags of_trunc(s=
truct openflags flags)
> arch/um/include/shared/os.h:116:static inline struct openflags of_append(=
struct openflags flags)
> arch/um/include/shared/os.h:122:static inline struct openflags of_excl(st=
ruct openflags flags)
> arch/unicore32/include/mach/dma.h:40:static inline void puv3_resume_dma(i=
nt ch)
> arch/x86/boot/boot.h:130:static inline void wrfs8(u8 v, addr_t addr)
> arch/x86/boot/boot.h:134:static inline void wrfs16(u16 v, addr_t addr)
> arch/x86/boot/boot.h:143:static inline u8 rdgs8(addr_t addr)
> arch/x86/boot/boot.h:149:static inline u16 rdgs16(addr_t addr)
> arch/x86/boot/boot.h:162:static inline void wrgs8(u8 v, addr_t addr)
> arch/x86/boot/boot.h:166:static inline void wrgs16(u16 v, addr_t addr)
> arch/x86/boot/boot.h:170:static inline void wrgs32(u32 v, addr_t addr)
> arch/x86/boot/boot.h:176:static inline bool memcmp_fs(const void *s1, add=
r_t s2, size_t len)
> arch/x86/boot/boot.h:183:static inline bool memcmp_gs(const void *s1, add=
r_t s2, size_t len)
> arch/x86/boot/video.h:109:static inline u8 tst_idx(u8 v, u16 port, u8 ind=
ex)
> arch/x86/include/asm/desc.h:84:static inline void pack_gate(gate_desc *ga=
te, unsigned type, unsigned long func,
> arch/x86/include/asm/i8259.h:32:static inline unsigned char inb_pic(unsig=
ned int port)
> arch/x86/include/asm/intel_scu_ipc.h:49:static inline void intel_scu_noti=
fier_remove(struct notifier_block *nb)
> arch/x86/include/asm/invpcid.h:36:static inline void invpcid_flush_single=
_context(unsigned long pcid)
> arch/x86/include/asm/invpcid.h:48:static inline void invpcid_flush_all_no=
nglobals(void)
> arch/x86/include/asm/iosf_mbi.h:243:int iosf_mbi_call_pmic_bus_access_not=
ifier_chain(unsigned long val, void *v)
> arch/x86/include/asm/mpspec.h:132:static inline unsigned long physids_coe=
rce(physid_mask_t *map)
> arch/x86/include/asm/numachip/numachip_csr.h:45:static inline unsigned in=
t read_lcsr(unsigned long offset)
> arch/x86/include/asm/numachip/numachip_csr.h:73:static inline u32 numachi=
p2_read32_lcsr(unsigned long offset)
> arch/x86/include/asm/pgalloc.h:130:static inline void pud_populate_safe(s=
truct mm_struct *mm, pud_t *pud, pmd_t *pmd)
> arch/x86/include/asm/pgalloc.h:21:static inline void paravirt_alloc_pmd_c=
lone(unsigned long pfn, unsigned long clonepfn,
> arch/x86/include/asm/pgalloc.h:70:static inline void pmd_populate_kernel_=
safe(struct mm_struct *mm,
> arch/x86/include/asm/pgtable-2level.h:77:static inline unsigned long pte_=
bitop(unsigned long value, unsigned int rightshift,
> arch/x86/include/asm/pgtable.h:193:static inline int pte_global(pte_t pte=
)
> arch/x86/include/asm/pgtable.h:361:static inline pte_t pte_mkglobal(pte_t=
 pte)
> arch/x86/include/asm/pgtable.h:366:static inline pte_t pte_clrglobal(pte_=
t pte)
> arch/x86/include/asm/pgtable.h:500:static inline int pud_soft_dirty(pud_t=
 pud)
> arch/x86/include/asm/pgtable.h:515:static inline pud_t pud_mksoft_dirty(p=
ud_t pud)
> arch/x86/include/asm/pgtable.h:530:static inline pud_t pud_clear_soft_dir=
ty(pud_t pud)
> arch/x86/include/asm/pgtable.h:598:static inline pud_t pud_mknotpresent(p=
ud_t pud)
> arch/x86/include/asm/spec-ctrl.h:68:static inline unsigned long stibp_spe=
c_ctrl_to_tif(u64 spec_ctrl)
> arch/x86/include/asm/uv/uv_bau.h:797:static inline void bau_cpubits_clear=
(struct bau_local_cpumask *dstp, int nbits)
> arch/x86/include/asm/uv/uv_hub.h:299:static inline int is_uv_hub(void)
> arch/x86/include/asm/uv/uv_hub.h:426:static inline unsigned int uv_gpa_sh=
ift(void)
> arch/x86/include/asm/uv/uv_hub.h:469:static inline unsigned long uv_gpa_n=
asid(void *v)
> arch/x86/include/asm/uv/uv_hub.h:597:static inline int uv_apicid_to_socke=
t(int apicid)
> arch/x86/include/asm/uv/uv_hub.h:650:static inline unsigned char uv_read_=
global_mmr8(int pnode, unsigned long offset)
> arch/x86/include/asm/uv/uv_hub.h:674:static inline unsigned char uv_read_=
local_mmr8(unsigned long offset)
> arch/x86/kvm/cpuid.h:173:static inline int guest_cpuid_stepping(struct kv=
m_vcpu *vcpu)
> arch/x86/kvm/lapic.h:122:static inline bool kvm_hv_vapic_assist_page_enab=
led(struct kvm_vcpu *vcpu)
> arch/x86/um/shared/sysdep/stub_32.h:24:static inline long stub_syscall1(l=
ong syscall, long arg1)
> arch/xtensa/include/asm/timex.h:47:static inline void set_ccount (unsigne=
d long ccount)
> crypto/internal.h:122:static inline void crypto_notify(unsigned long val,=
 void *v)
> drivers/block/drbd/drbd_vli.h:234:static inline void bitstream_rewind(str=
uct bitstream *bs)
> drivers/crypto/caam/desc_constr.h:115:static inline void init_sh_desc_pdb=
(u32 * const desc, u32 options,
> drivers/crypto/caam/desc_constr.h:292:static inline void append_store(u32=
 * const desc, dma_addr_t ptr,
> drivers/crypto/caam/sg_sw_qm.h:29:static inline void dma_to_qm_sg_one_las=
t(struct qm_sg_entry *qm_sg_ptr,
> drivers/crypto/cavium/nitrox/nitrox_dev.h:297:static inline bool nitrox_v=
fdev_ready(struct nitrox_vfdev *vfdev)
> drivers/crypto/chelsio/chtls/chtls.h:443:static inline void __chtls_sock_=
put(const char *fn, struct chtls_sock *csk)
> drivers/crypto/chelsio/chtls/chtls.h:448:static inline void __chtls_sock_=
get(const char *fn,
> drivers/dma/ioat/dma.h:248:static inline u32 ioat_chanerr(struct ioatdma_=
chan *ioat_chan)
> drivers/dma/ioat/dma.h:293:static inline bool is_ioat_suspended(unsigned =
long status)
> drivers/dma/ioat/dma.h:299:static inline bool is_ioat_bug(unsigned long e=
rr)
> drivers/dma/iop-adma.h:299:static inline int iop_chan_memset_slot_count(s=
ize_t len, int *slots_per_op)
> drivers/dma/iop-adma.h:378:static inline u32 iop_desc_get_byte_count(stru=
ct iop_adma_desc_slot *desc,
> drivers/dma/iop-adma.h:411:static inline u32 iop_desc_get_src_addr(struct=
 iop_adma_desc_slot *desc,
> drivers/dma/iop-adma.h:461:iop_desc_init_memset(struct iop_adma_desc_slot=
 *desc, unsigned long flags)
> drivers/dma/iop-adma.h:776:static inline void iop_desc_set_block_fill_val=
(struct iop_adma_desc_slot *desc,
> drivers/fpga/dfl.h:354:static inline bool is_dfl_feature_present(struct d=
evice *dev, u64 id)
> drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:182:static inline unsigned amd=
gpu_bo_ngpu_pages(struct amdgpu_bo *bo)
> drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:187:static inline unsigned amd=
gpu_bo_gpu_page_alignment(struct amdgpu_bo *bo)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:103:static inline do=
uble dml_floor_ex(double x, double granularity)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:108:static inline do=
uble dml_log(double x, double base)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:132:static inline do=
uble dml_abs(double a)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:88:static inline dou=
ble dml_fmod(double f, int val)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:93:static inline dou=
ble dml_ceil_2(double f)
> drivers/gpu/drm/amd/display/dc/dml/dml_inline_defs.h:98:static inline dou=
ble dml_ceil_ex(double x, double granularity)
> drivers/gpu/drm/amd/display/dc/dm_services.h:89:static inline uint32_t dm=
_read_index_reg(
> drivers/gpu/drm/amd/display/dc/dm_services.h:97:static inline void dm_wri=
te_index_reg(
> drivers/gpu/drm/amd/display/dc/inc/bw_fixed.h:54:static inline struct bw_=
fixed bw_min3(struct bw_fixed v1,
> drivers/gpu/drm/amd/display/dmub/inc/dmub_rb.h:108:static inline bool dmu=
b_rb_pop_front(struct dmub_rb *rb)
> drivers/gpu/drm/amd/display/dmub/inc/dmub_rb.h:95:static inline bool dmub=
_rb_front(struct dmub_rb *rb,
> drivers/gpu/drm/amd/display/include/grph_object_id.h:242:static inline ui=
nt32_t dal_graphics_object_id_to_uint(
> drivers/gpu/drm/amd/display/include/grph_object_id.h:248:static inline en=
um controller_id dal_graphics_object_id_get_controller_id(
> drivers/gpu/drm/amd/display/include/grph_object_id.h:256:static inline en=
um clock_source_id dal_graphics_object_id_get_clock_source_id(
> drivers/gpu/drm/amd/display/include/grph_object_id.h:280:static inline en=
um audio_id dal_graphics_object_id_get_audio_id(
> drivers/gpu/drm/amd/display/include/grph_object_id.h:288:static inline en=
um engine_id dal_graphics_object_id_get_engine_id(
> drivers/gpu/drm/amd/display/include/grph_object_id.h:296:static inline bo=
ol dal_graphics_object_id_equal(
> drivers/gpu/drm/amd/display/include/signal_types.h:93:static inline bool =
dc_is_dvi_single_link_signal(enum signal_type signal)
> drivers/gpu/drm/arm/display/komeda/d71/d71_regs.h:536:static inline u32 g=
et_block_type(struct block_header *blk)
> drivers/gpu/drm/arm/display/komeda/komeda_dev.h:224:komeda_product_match(=
struct komeda_dev *mdev, u32 target)
> drivers/gpu/drm/arm/display/komeda/komeda_kms.h:136:static inline bool is=
_writeback_only(struct drm_crtc_state *st)
> drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h:382:static inline u32 atmel_=
hlcdc_layer_read_cfg(struct atmel_hlcdc_layer *layer,
> drivers/gpu/drm/exynos/exynos_drm_fbdev.h:30:static inline void exynos_dr=
m_fbdev_restore_mode(struct drm_device *dev)
> drivers/gpu/drm/i915/gem/i915_gem_object.h:118:static inline bool i915_ge=
m_object_trylock(struct drm_i915_gem_object *obj)
> drivers/gpu/drm/i915/gem/i915_gem_object.h:152:i915_gem_object_is_contigu=
ous(const struct drm_i915_gem_object *obj)
> drivers/gpu/drm/i915/gt/gen6_ppgtt.h:24:static inline u32 gen6_pte_index(=
u32 addr)
> drivers/gpu/drm/i915/gt/uc/intel_guc.h:141:static inline bool intel_guc_i=
s_supported(struct intel_guc *guc)
> drivers/gpu/drm/i915/gt/uc/intel_guc.h:146:static inline bool intel_guc_i=
s_wanted(struct intel_guc *guc)
> drivers/gpu/drm/i915/gt/uc/intel_guc.h:84:intel_guc_send_and_receive(stru=
ct intel_guc *guc, const u32 *action, u32 len,
> drivers/gpu/drm/i915/gt/uc/intel_huc.h:44:static inline bool intel_huc_is=
_wanted(struct intel_huc *huc)
> drivers/gpu/drm/i915/gt/uc/intel_huc.h:49:static inline bool intel_huc_is=
_used(struct intel_huc *huc)
> drivers/gpu/drm/i915/i915_active.h:179:static inline bool i915_active_has=
_exclusive(struct i915_active *ref)
> drivers/gpu/drm/i915/i915_fixed.h:107:static inline u32 div_round_up_u32_=
fixed16(u32 val, uint_fixed_16_16_t d)
> drivers/gpu/drm/i915/i915_fixed.h:127:static inline uint_fixed_16_16_t ad=
d_fixed16(uint_fixed_16_16_t add1,
> drivers/gpu/drm/i915/i915_fixed.h:20:static inline bool is_fixed16_zero(u=
int_fixed_16_16_t val)
> drivers/gpu/drm/i915/i915_fixed.h:39:static inline u32 fixed16_to_u32(uin=
t_fixed_16_16_t fp)
> drivers/gpu/drm/i915/i915_utils.h:251:static inline void drain_delayed_wo=
rk(struct delayed_work *dw)
> drivers/gpu/drm/i915/i915_vma.h:68:static inline bool i915_vma_has_ggtt_w=
rite(const struct i915_vma *vma)
> drivers/gpu/drm/i915/intel_sideband.h:100:static inline void vlv_nc_get(s=
truct drm_i915_private *i915)
> drivers/gpu/drm/i915/intel_sideband.h:107:static inline void vlv_nc_put(s=
truct drm_i915_private *i915)
> drivers/gpu/drm/i915/intel_sideband.h:34:static inline void vlv_bunit_get=
(struct drm_i915_private *i915)
> drivers/gpu/drm/i915/intel_sideband.h:42:static inline void vlv_bunit_put=
(struct drm_i915_private *i915)
> drivers/gpu/drm/i915/intel_sideband.h:60:static inline void vlv_ccu_get(s=
truct drm_i915_private *i915)
> drivers/gpu/drm/i915/intel_sideband.h:68:static inline void vlv_ccu_put(s=
truct drm_i915_private *i915)
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1032:static inline uint32_t DSI_28nm_PH=
Y_PLL_SDM_CFG1_DITHER_EN(uint32_t val)
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1127:static inline uint32_t REG_DSI_20n=
m_PHY_LN(uint32_t i0) { return 0x00000000 + 0x40*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1133:static inline uint32_t REG_DSI_20n=
m_PHY_LN_CFG_2(uint32_t i0) { return 0x00000008 + 0x40*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1139:static inline uint32_t REG_DSI_20n=
m_PHY_LN_TEST_DATAPATH(uint32_t i0) { return 0x00000014 + 0x40*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1141:static inline uint32_t REG_DSI_20n=
m_PHY_LN_DEBUG_SEL(uint32_t i0) { return 0x00000018 + 0x40*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1318:static inline uint32_t DSI_14nm_PH=
Y_CMN_CLK_CFG0_DIV_CTRL_3_0(uint32_t val)
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1324:static inline uint32_t DSI_14nm_PH=
Y_CMN_CLK_CFG0_DIV_CTRL_7_4(uint32_t val)
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1368:static inline uint32_t REG_DSI_14n=
m_PHY_LN(uint32_t i0) { return 0x00000000 + 0x80*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1629:static inline uint32_t REG_DSI_10n=
m_PHY_LN(uint32_t i0) { return 0x00000000 + 0x80*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:1639:static inline uint32_t REG_DSI_10n=
m_PHY_LN_TEST_DATAPATH(uint32_t i0) { return 0x00000010 + 0x80*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:571:static inline uint32_t REG_DSI_28nm=
_8960_PHY_LN(uint32_t i0) { return 0x00000000 + 0x40*i0; }
> drivers/gpu/drm/msm/dsi/dsi.xml.h:800:static inline uint32_t REG_DSI_28nm=
_PHY_LN(uint32_t i0) { return 0x00000000 + 0x40*i0; }
> drivers/gpu/drm/nouveau/dispnv04/hw.h:312:NVLockVgaCrtcs(struct drm_devic=
e *dev, bool lock)
> drivers/gpu/drm/nouveau/dispnv04/hw.h:389:nv_pitch_align(struct drm_devic=
e *dev, uint32_t width, int bpp)
> drivers/gpu/drm/nouveau/nouveau_bo.h:108:nouveau_bo_unmap_unpin_unref(str=
uct nouveau_bo **pnvbo)
> drivers/gpu/drm/nouveau/nouveau_bo.h:118:nouveau_bo_new_pin_map(struct no=
uveau_cli *cli, u64 size, int align, u32 flags,
> drivers/gpu/drm/omapdrm/tcm.h:104:static inline void tcm_deinit(struct tc=
m *tcm)
> drivers/gpu/drm/omapdrm/tcm.h:243:static inline bool tcm_area_is_valid(st=
ruct tcm_area *area)
> drivers/gpu/drm/omapdrm/tcm.h:301:static inline s32 tcm_1d_limit(struct t=
cm_area *a, u32 num_pg)
> drivers/gpu/drm/qxl/qxl_object.h:51:static inline u64 qxl_bo_gpu_offset(s=
truct qxl_bo *bo)
> drivers/gpu/drm/qxl/qxl_object.h:56:static inline unsigned long qxl_bo_si=
ze(struct qxl_bo *bo)
> drivers/gpu/drm/qxl/qxl_object.h:66:static inline int qxl_bo_wait(struct =
qxl_bo *bo, u32 *mem_type,
> drivers/gpu/drm/radeon/radeon_object.h:101:static inline unsigned radeon_=
bo_ngpu_pages(struct radeon_bo *bo)
> drivers/gpu/drm/radeon/radeon_object.h:106:static inline unsigned radeon_=
bo_gpu_page_alignment(struct radeon_bo *bo)
> drivers/gpu/drm/vmwgfx/device_include/svga3d_surfacedefs.h:1284:svga3dsur=
face_get_image_offset(SVGA3dSurfaceFormat format,
> drivers/gpu/host1x/syncpt.h:111:static inline int host1x_syncpt_is_valid(=
struct host1x_syncpt *sp)
> drivers/hid/intel-ish-hid/ishtp/ishtp-dev.h:228:static inline int ish_ipc=
_reset(struct ishtp_device *dev)
> drivers/iio/magnetometer/st_magn.h:35:static inline int st_magn_probe_tri=
gger(struct iio_dev *indio_dev, int irq)
> drivers/iio/magnetometer/st_magn.h:39:static inline void st_magn_remove_t=
rigger(struct iio_dev *indio_dev, int irq)
> drivers/infiniband/hw/bnxt_re/qplib_rcfw.h:180:static inline void bnxt_qp=
lib_ring_creq_db_rearm(void __iomem *db, u32 raw_cons,
> drivers/infiniband/hw/bnxt_re/qplib_rcfw.h:193:static inline void bnxt_qp=
lib_ring_creq_db(void __iomem *db, u32 raw_cons,
> drivers/infiniband/hw/cxgb4/iw_cxgb4.h:662:static inline u32 c4iw_ib_to_t=
pt_bind_access(int acc)
> drivers/infiniband/hw/cxgb4/t4.h:490:static inline int t4_rq_full(struct =
t4_wq *wq)
> drivers/infiniband/hw/cxgb4/t4.h:537:static inline int t4_sq_full(struct =
t4_wq *wq)
> drivers/infiniband/hw/cxgb4/t4.h:682:static inline int t4_wq_db_enabled(s=
truct t4_wq *wq)
> drivers/infiniband/hw/cxgb4/t4.h:846:static inline int t4_cq_in_error(str=
uct t4_cq *cq)
> drivers/infiniband/hw/hfi1/chip.h:825:static inline int is_lcb_offset(u32=
 offset)
> drivers/infiniband/hw/hfi1/hfi.h:717:static inline void incr_cntr32(u32 *=
cntr)
> drivers/infiniband/hw/qib/qib_common.h:799:static inline __u32 qib_hdrget=
_qib_ver(__le32 hdrword)
> drivers/infiniband/hw/qib/qib.h:1306:static inline int qib_sdma_empty(con=
st struct qib_pportdata *ppd)
> drivers/infiniband/hw/qib/qib.h:1367:static inline u32 qib_get_hdrqtail(c=
onst struct qib_ctxtdata *rcd)
> drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:335:static inline enum pvrdma_p=
ort_state ib_port_state_to_pvrdma(
> drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:347:static inline int ib_port_c=
ap_flags_to_pvrdma(int flags)
> drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:357:static inline enum pvrdma_p=
ort_width ib_port_width_to_pvrdma(
> drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:369:static inline enum pvrdma_p=
ort_speed ib_port_speed_to_pvrdma(
> drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:413:static inline enum ib_qp_ty=
pe pvrdma_qp_type_to_ib(enum pvrdma_qp_type type)
> drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.h:141:static inline int pvr=
dma_width_enum_to_int(enum pvrdma_port_width width)
> drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.h:73:static inline int pvrd=
ma_mtu_enum_to_int(enum pvrdma_mtu mtu)
> drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.h:85:static inline enum pvr=
dma_mtu pvrdma_mtu_int_to_enum(int mtu)
> drivers/infiniband/sw/rxe/rxe_hdr.h:328:static inline u8 bth_mig(struct r=
xe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:333:static inline void bth_set_mig(st=
ruct rxe_pkt_info *pkt, u8 mig)
> drivers/infiniband/sw/rxe/rxe_hdr.h:353:static inline void bth_set_tver(s=
truct rxe_pkt_info *pkt, u8 tver)
> drivers/infiniband/sw/rxe/rxe_hdr.h:363:static inline void bth_set_pkey(s=
truct rxe_pkt_info *pkt, u16 pkey)
> drivers/infiniband/sw/rxe/rxe_hdr.h:378:static inline int bth_fecn(struct=
 rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:383:static inline void bth_set_fecn(s=
truct rxe_pkt_info *pkt, int fecn)
> drivers/infiniband/sw/rxe/rxe_hdr.h:388:static inline int bth_becn(struct=
 rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:393:static inline void bth_set_becn(s=
truct rxe_pkt_info *pkt, int becn)
> drivers/infiniband/sw/rxe/rxe_hdr.h:398:static inline u8 bth_resv6a(struc=
t rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:403:static inline void bth_set_resv6a=
(struct rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:418:static inline void bth_set_resv7(=
struct rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:476:static inline u8 rdeth_een(struct=
 rxe_pkt_info *pkt)
> drivers/infiniband/sw/rxe/rxe_hdr.h:482:static inline void rdeth_set_een(=
struct rxe_pkt_info *pkt, u32 een)
> drivers/infiniband/sw/rxe/rxe_hdr.h:820:static inline u32 aeth_msn(struct=
 rxe_pkt_info *pkt)
> drivers/infiniband/sw/siw/iwarp.h:117:static inline void __ddp_set_versio=
n(struct iwarp_ctrl *ctrl, u8 version)
> drivers/infiniband/sw/siw/iwarp.h:131:static inline void __rdmap_set_vers=
ion(struct iwarp_ctrl *ctrl, u8 version)
> drivers/isdn/mISDN/dsp_ecdis.h:33:echo_can_disable_detector_init(struct e=
c_disable_detector_state *det)
> drivers/isdn/mISDN/dsp_ecdis.h:55:echo_can_disable_detector_update(struct=
 ec_disable_detector_state *det,
> drivers/lightnvm/pblk.h:1308:static inline unsigned int pblk_get_bi_idx(s=
truct bio *bio)
> drivers/md/bcache/bset.h:469:static inline void bch_bkey_to_text(struct b=
tree_keys *b, char *buf,
> drivers/md/bcache/bset.h:527:static inline void bch_keylist_reset(struct =
keylist *l)
> drivers/md/bcache/closure.h:208:static inline void closure_set_ret_ip(str=
uct closure *cl)
> drivers/md/persistent-data/dm-space-map.h:109:static inline int dm_sm_set=
_count(struct dm_space_map *sm, dm_block_t b,
> drivers/md/raid5.h:750:static inline int algorithm_is_DDF(int layout)
> drivers/media/dvb-frontends/si21xx.h:28:static inline int si21xx_writereg=
ister(struct dvb_frontend *fe, u8 reg, u8 val)
> drivers/media/dvb-frontends/stv0288.h:45:static inline int stv0288_writer=
eg(struct dvb_frontend *fe, u8 reg, u8 val)
> drivers/media/pci/cx25821/cx25821-biffuncs.h:14:static inline u8 getBit(u=
32 sample, u8 index)
> drivers/media/pci/ivtv/ivtv-queue.h:18:static inline int ivtv_might_use_p=
io(struct ivtv_stream *s)
> drivers/media/platform/davinci/vpif.h:368:static inline void ch0_set_vbi_=
addr(unsigned long top_vbi,
> drivers/media/platform/davinci/vpif.h:375:static inline void ch0_set_hbi_=
addr(unsigned long top_vbi,
> drivers/media/platform/davinci/vpif.h:382:static inline void ch1_set_vbi_=
addr(unsigned long top_vbi,
> drivers/media/platform/davinci/vpif.h:389:static inline void ch1_set_hbi_=
addr(unsigned long top_vbi,
> drivers/media/platform/davinci/vpif.h:397:static inline void disable_raw_=
feature(u8 channel_id, u8 index)
> drivers/media/platform/davinci/vpif.h:411:static inline void enable_raw_f=
eature(u8 channel_id, u8 index)
> drivers/media/platform/davinci/vpif.h:493:static inline void channel2_raw=
_enable(int enable, u8 index)
> drivers/media/platform/davinci/vpif.h:509:static inline void channel3_raw=
_enable(int enable, u8 index)
> drivers/media/platform/davinci/vpif.h:584:static inline void ch2_set_vbi_=
addr(unsigned long top_strt_luma,
> drivers/media/platform/davinci/vpif.h:593:static inline void ch3_set_vbi_=
addr(unsigned long top_strt_luma,
> drivers/media/platform/exynos4-is/fimc-is.h:310:static inline void fimc_i=
s_set_param_ctrl_cmd(struct fimc_is *is, int cmd)
> drivers/media/platform/omap3isp/isp.h:349:isp_pad_buffer_type(const struc=
t v4l2_subdev *subdev, int pad)
> drivers/media/platform/qcom/venus/hfi_parser.h:105:static inline u32 frat=
e_step(struct venus_inst *inst)
> drivers/media/platform/ti-vpe/vpdma_priv.h:578:static inline u32 ctd_pixe=
l_line_count(int pixel_count, int line_count)
> drivers/media/platform/ti-vpe/vpdma_priv.h:583:static inline u32 ctd_set_=
fid_ctl(int fid0, int fid1, int fid2)
> drivers/media/platform/ti-vpe/vpdma_priv.h:594:static inline u32 ctd_get_=
pixel_count(struct vpdma_ctd *ctd)
> drivers/media/platform/ti-vpe/vpdma_priv.h:599:static inline int ctd_get_=
line_count(struct vpdma_ctd *ctd)
> drivers/media/platform/ti-vpe/vpdma_priv.h:604:static inline int ctd_get_=
event(struct vpdma_ctd *ctd)
> drivers/media/platform/ti-vpe/vpdma_priv.h:609:static inline int ctd_get_=
fid2_ctl(struct vpdma_ctd *ctd)
> drivers/media/platform/ti-vpe/vpdma_priv.h:614:static inline int ctd_get_=
fid1_ctl(struct vpdma_ctd *ctd)
> drivers/media/platform/ti-vpe/vpdma_priv.h:619:static inline int ctd_get_=
fid0_ctl(struct vpdma_ctd *ctd)
> drivers/media/platform/xilinx/xilinx-vip.h:209:static inline void xvip_en=
able_reg_update(struct xvip_device *xvip)
> drivers/media/platform/xilinx/xilinx-vip.h:214:static inline void xvip_di=
sable_reg_update(struct xvip_device *xvip)
> drivers/misc/echo/fir.h:123:static inline void fir32_flush(struct fir32_s=
tate_t *fir)
> drivers/misc/echo/fir.h:128:static inline void fir32_free(struct fir32_st=
ate_t *fir)
> drivers/misc/echo/fir.h:133:static inline int16_t fir32(struct fir32_stat=
e_t *fir, int16_t sample)
> drivers/misc/ibmasm/lowlevel.h:46:static inline int uart_interrupt_pendin=
g(void __iomem *base_address)
> drivers/misc/sgi-gru/gru_instructions.h:371:static inline void gru_vstore=
_phys(void *cb, unsigned long gpa,
> drivers/misc/sgi-gru/gru_instructions.h:409:static inline void gru_ivload=
(void *cb, unsigned long mem_addr,
> drivers/misc/sgi-gru/gru_instructions.h:422:static inline void gru_ivstor=
e(void *cb, unsigned long mem_addr,
> drivers/misc/sgi-gru/gru_instructions.h:449:static inline void gru_ivset(=
void *cb, unsigned long mem_addr,
> drivers/misc/sgi-gru/gru_instructions.h:463:static inline void gru_vflush=
(void *cb, unsigned long mem_addr,
> drivers/misc/sgi-gru/gru_instructions.h:476:static inline void gru_nop(vo=
id *cb, int hints)
> drivers/misc/sgi-gru/gru_instructions.h:499:static inline void gru_bstore=
(void *cb, const unsigned long src,
> drivers/misc/sgi-gru/gru_instructions.h:522:static inline void gru_gamirr=
(void *cb, int exopc, unsigned long src,
> drivers/misc/sgi-gru/gru_instructions.h:546:static inline void gru_gamerr=
(void *cb, int exopc, unsigned long src,
> drivers/misc/sgi-gru/gru_instructions.h:559:static inline void gru_gamxr(=
void *cb, unsigned long src,
> drivers/misc/sgi-gru/gru_instructions.h:636:static inline int gru_get_cb_=
status(void *cb)
> drivers/misc/sgi-gru/gru_instructions.h:652:static inline int gru_get_cb_=
substatus(void *cb)
> drivers/misc/sgi-xp/xpc.h:423:xpc_any_openclose_chctl_flags_set(union xpc=
_channel_ctl_flags *chctl)
> drivers/misc/sgi-xp/xpc.h:435:xpc_any_msg_chctl_flags_set(union xpc_chann=
el_ctl_flags *chctl)
> drivers/misc/sgi-xp/xp.h:321:xpc_partid_to_nasids(short partid, void *nas=
ids)
> drivers/mmc/core/card.h:142:static inline void __maybe_unused remove_quir=
k(struct mmc_card *card, int data)
> drivers/mmc/core/card.h:162:static inline void __maybe_unused remove_quir=
k_mmc(struct mmc_card *card,
> drivers/mmc/core/card.h:178:static inline void __maybe_unused remove_quir=
k_sd(struct mmc_card *card,
> drivers/net/dsa/b53/b53_priv.h:166:static inline int is5397_98(struct b53=
_device *dev)
> drivers/net/ethernet/amazon/ena/ena_netdev.h:439:static inline bool ena_x=
dp_queues_present(struct ena_adapter *adapter)
> drivers/net/ethernet/atheros/alx/hw.h:516:static inline void alx_write_me=
m8(struct alx_hw *hw, u32 reg, u8 val)
> drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h:262:static inline void b=
nx2x_dcb_config_qm(struct bnx2x *bp, enum cos_mode mode,
> drivers/net/ethernet/cavium/liquidio/octeon_device.h:910:static inline u3=
2 lio_get_priv_flag(struct octeon_device *octdev, u32 flag)
> drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.h:237:static inline void cud=
bg_fill_qdesc_txq(const struct sge_txq *txq,
> drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.h:249:static inline void cud=
bg_fill_qdesc_rxq(const struct sge_rspq *rxq,
> drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.h:261:static inline void cud=
bg_fill_qdesc_flq(const struct sge_fl *flq,
> drivers/net/ethernet/chelsio/cxgb4/cxgb4.h:1713:static inline int t4_memo=
ry_write(struct adapter *adap, int mtype, u32 addr,
> drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.h:60:static inline void cxgb=
4_xmit_hwtstamp_pending(struct sk_buff *skb)
> drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h:268:static inline int =
cxgbi_ppm_ddp_tag_update_sw_bits(struct cxgbi_ppm *ppm,
> drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h:288:static inline void=
 cxgbi_ppm_ppod_clear(struct cxgbi_pagepod *ppod)
> drivers/net/ethernet/cisco/enic/enic_res.h:88:static inline void enic_que=
ue_wq_desc_csum(struct vnic_wq *wq,
> drivers/net/ethernet/emulex/benet/be.h:896:static inline u8 is_tcp_pkt(st=
ruct sk_buff *skb)
> drivers/net/ethernet/freescale/gianfar.h:1201:static inline void gfar_rea=
d_filer(struct gfar_private *priv,
> drivers/net/ethernet/intel/i40e/i40e_client.h:194:static inline bool i40e=
_client_is_registered(struct i40e_client *client)
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.h:462:static inlin=
e int otx2_sync_mbox_up_msg(struct mbox *mbox, int devid)
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.h:479:static inlin=
e int otx2_sync_mbox_msg_busy_poll(struct mbox *mbox)
> drivers/net/ethernet/mellanox/mlx5/core/lib/hv_vhca.h:97:mlx5_hv_vhca_wri=
te_agent(struct mlx5_hv_vhca_agent *agent,
> drivers/net/ethernet/mellanox/mlx5/core/wq.h:105:static inline int mlx5_w=
q_cyc_is_full(struct mlx5_wq_cyc *wq)
> drivers/net/ethernet/mellanox/mlx5/core/wq.h:120:static inline void mlx5_=
wq_cyc_push(struct mlx5_wq_cyc *wq)
> drivers/net/ethernet/mellanox/mlx5/core/wq.h:167:static inline int mlx5_w=
q_cyc_cc_bigger(u16 cc1, u16 cc2)
> drivers/net/ethernet/mellanox/mlx5/core/wq.h:246:static inline int mlx5_w=
q_ll_is_full(struct mlx5_wq_ll *wq)
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:1009:static inline int mlxsw_cm=
d_query_sdq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:1016:static inline int mlxsw_cm=
d_query_rdq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:1106:static inline int mlxsw_cm=
d_query_cq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:1184:static inline int mlxsw_cm=
d_query_eq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:976:static inline int mlxsw_cmd=
_2err_sdq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/cmd.h:983:static inline int mlxsw_cmd=
_2err_rdq(struct mlxsw_core *mlxsw_core,
> drivers/net/ethernet/mellanox/mlxsw/reg.h:2781:mlxsw_reg_perar_hw_regions=
_needed(unsigned int block_num)
> drivers/net/ethernet/mellanox/mlxsw/reg.h:420:static inline void mlxsw_re=
g_sfd_uc_unpack(char *payload, int rec_index,
> drivers/net/ethernet/mellanox/mlxsw/reg.h:4350:static inline void mlxsw_r=
eg_ptys_ib_unpack(char *payload, u16 *p_ib_proto_cap,
> drivers/net/ethernet/mellanox/mlxsw/reg.h:481:static inline void mlxsw_re=
g_sfd_uc_lag_unpack(char *payload, int rec_index,
> drivers/net/ethernet/mellanox/mlxsw/reg.h:8119:mlxsw_reg_mfcr_pack(char *=
payload,
> drivers/net/ethernet/mellanox/mlxsw/reg.h:8232:static inline void mlxsw_r=
eg_mfsl_unpack(char *payload, u8 tacho,
> drivers/net/ethernet/natsemi/sonic.h:386:static inline __u16 sonic_cda_ge=
t(struct net_device* dev, int entry,
> drivers/net/ethernet/netronome/nfp/bpf/main.h:366:static inline u8 mbpf_m=
ode(const struct nfp_insn_meta *meta)
> drivers/net/ethernet/netronome/nfp/nfp_app.h:345:static inline bool nfp_a=
pp_ctrl_tx(struct nfp_app *app, struct sk_buff *skb)
> drivers/net/ethernet/pensando/ionic/ionic_lif.h:215:static inline u32 ion=
ic_coal_hw_to_usec(struct ionic *ionic, u32 units)
> drivers/net/ethernet/qlogic/qlcnic/qlcnic.h:1883:static inline int qlcnic=
_hw_write_wx_2M(struct qlcnic_adapter *adapter,
> drivers/net/ethernet/realtek/atp.h:239:static inline void write_word_mode=
0(short ioaddr, unsigned short value)
> drivers/net/ethernet/sfc/falcon/efx.h:265:static inline bool ef4_rwsem_as=
sert_write_locked(struct rw_semaphore *sem)
> drivers/net/ethernet/sfc/falcon/io.h:72:static inline __le64 _ef4_readq(s=
truct ef4_nic *efx, unsigned int reg)
> drivers/net/ethernet/sfc/falcon/net_driver.h:1301:static inline netdev_fe=
atures_t ef4_supported_features(const struct ef4_nic *efx)
> drivers/net/ethernet/sfc/falcon/net_driver.h:909:static inline unsigned i=
nt ef4_port_num(struct ef4_nic *efx)
> drivers/net/ethernet/sfc/io.h:84:static inline __le64 _efx_readq(struct e=
fx_nic *efx, unsigned int reg)
> drivers/net/ethernet/sfc/net_driver.h:714:static inline bool efx_phy_mode=
_disabled(enum efx_phy_mode mode)
> drivers/net/ethernet/ti/netcp.h:160:static inline int netcp_align_psdata(=
struct netcp_packet *p_info,
> drivers/net/ethernet/ti/tlan.h:454:static inline u16 tlan_dio_read16(u16 =
base_addr, u16 internal_addr)
> drivers/net/wimax/i2400m/i2400m.h:719:int i2400m_is_d2h_barker(const void=
 *buf)
> drivers/net/wireless/ath/ath10k/hif.h:155:static inline void ath10k_hif_g=
et_default_pipe(struct ath10k *ar,
> drivers/net/wireless/ath/ath10k/hif.h:167:static inline u16 ath10k_hif_ge=
t_free_queue_number(struct ath10k *ar,
> drivers/net/wireless/ath/ath10k/wmi-ops.h:545:ath10k_wmi_pdev_resume_targ=
et(struct ath10k *ar)
> drivers/net/wireless/ath/ath9k/hw-ops.h:133:static inline bool ath9k_hw_d=
etect_bb_hang(struct ath_hw *ah)
> drivers/net/wireless/ath/carl9170/fwdesc.h:221:static inline void carl917=
0fw_fill_desc(struct carl9170fw_desc_head *head,
> drivers/net/wireless/ath/wil6210/txrx_edma.h:485:static inline int wil_rx=
_status_get_error(void *msg)
> drivers/net/wireless/ath/wil6210/txrx_edma.h:588:dma_addr_t wil_rx_desc_g=
et_addr_edma(struct wil_ring_rx_enhanced_dma *dma)
> drivers/net/wireless/ath/wil6210/txrx.h:539:static inline int wil_rxdesc_=
ext_subtype(struct vring_rx_desc *d)
> drivers/net/wireless/ath/wil6210/txrx.h:559:static inline int wil_rxdesc_=
ds_bits(struct vring_rx_desc *d)
> drivers/net/wireless/ath/wil6210/txrx.h:594:static inline int wil_ring_is=
_full(struct wil_ring *ring)
> drivers/net/wireless/broadcom/b43legacy/main.h:45:u8 b43legacy_freq_to_ch=
annel(struct b43legacy_wldev *dev,
> drivers/net/wireless/broadcom/b43legacy/main.h:66:int b43legacy_channel_t=
o_freq(struct b43legacy_wldev *dev,
> drivers/net/wireless/broadcom/brcm80211/brcmsmac/aiutils.h:199:static inl=
ine u32 ai_get_pmucaps(struct si_pub *sih)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_utils.h:137:static =
inline int pktq_max(struct pktq *pq)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_utils.h:142:static =
inline int pktq_avail(struct pktq *pq)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_utils.h:152:static =
inline bool pktq_empty(struct pktq *pq)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_utils.h:81:static i=
nline int pktq_pavail(struct pktq *pq, int prec)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_utils.h:91:static i=
nline bool pktq_pempty(struct pktq *pq, int prec)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_wifi.h:164:static i=
nline int next_20mhz_chan(int channel)
> drivers/net/wireless/broadcom/brcm80211/include/brcmu_wifi.h:189:static i=
nline bool ac_bitmap_tst(u8 bitmap, int prec)
> drivers/net/wireless/intel/ipw2x00/ipw2200.h:846:static inline u8 ipw_get=
_scan_type(struct ipw_scan_request_ext *scan, u8 index)
> drivers/net/wireless/intel/ipw2x00/libipw.h:932:static inline int libipw_=
is_cck_rate(u8 rate)
> drivers/net/wireless/intel/ipw2x00/libipw.h:993:static inline void libipw=
_increment_scans(struct libipw_device *ieee)
> drivers/net/wireless/intel/iwlwifi/iwl-scd.h:85:static inline void iwl_sc=
d_disable_agg(struct iwl_trans *trans)
> drivers/net/wireless/intel/iwlwifi/iwl-trans.h:1286:static inline bool iw=
l_trans_fw_running(struct iwl_trans *trans)
> drivers/net/wireless/intel/iwlwifi/mvm/mvm.h:1321:static inline bool iwl_=
mvm_bt_is_rrc_supported(struct iwl_mvm *mvm)
> drivers/net/wireless/marvell/mwifiex/wmm.h:86:mwifiex_wmm_is_ra_list_empt=
y(struct list_head *ra_list_hhead)
> drivers/net/wireless/quantenna/qtnfmac/bus.h:102:static inline int qtnf_b=
us_preinit(struct qtnf_bus *bus)
> drivers/net/wireless/quantenna/qtnfmac/bus.h:109:static inline void qtnf_=
bus_stop(struct qtnf_bus *bus)
> drivers/net/wireless/quantenna/qtnfmac/util.h:29:static inline bool qtnf_=
sta_list_empty(const struct qtnf_sta_list *list)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:172:static inline vo=
id set_tx_desc_tx_stbc(__le32 *__pdesc, u32 __val)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:237:static inline in=
t get_tx_desc_tx_buffer_size(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:277:static inline in=
t get_rx_desc_security(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:282:static inline in=
t get_rx_desc_qos(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:302:static inline in=
t get_rx_desc_ls(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:307:static inline in=
t get_rx_desc_fs(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:312:static inline in=
t get_rx_desc_eor(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:352:static inline in=
t get_rx_desc_a1_fit(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:357:static inline in=
t get_rx_desc_a2_fit(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:362:static inline in=
t get_rx_desc_pam(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:367:static inline in=
t get_rx_desc_pwr(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:372:static inline in=
t get_rx_desc_md(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:377:static inline in=
t get_rx_desc_mf(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:382:static inline in=
t get_rx_desc_type(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:387:static inline in=
t get_rx_desc_mc(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:392:static inline in=
t get_rx_desc_bc(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:397:static inline in=
t get_rx_desc_seq(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:402:static inline in=
t get_rx_desc_frag(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:417:static inline in=
t get_rx_status_desc_rx_gf(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:432:static inline in=
t get_rx_desc_htc(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:437:static inline in=
t get_rx_status_desc_eosp(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:442:static inline in=
t get_rx_status_desc_bssid_fit(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:467:static inline u3=
2 get_rx_desc_iv1(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:482:static inline u3=
2 get_rx_desc_buff_addr64(__le32 *__pdesc)
> drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.h:492:static inline vo=
id set_rx_desc_buff_addr64(__le32 *__pdesc, u32 __val)
> drivers/net/wireless/realtek/rtw88/coex.h:319:static inline void rtw_coex=
_set_gnt_debug(struct rtw_dev *rtwdev)
> drivers/net/wireless/realtek/rtw88/hci.h:142:static inline void rtw_write=
16_clr(struct rtw_dev *rtwdev, u32 addr, u16 bit)
> drivers/net/wireless/realtek/rtw88/hci.h:197:rtw_read16_mask(struct rtw_d=
ev *rtwdev, u32 addr, u32 mask)
> drivers/net/wireless/realtek/rtw88/hci.h:210:rtw_read8_mask(struct rtw_de=
v *rtwdev, u32 addr, u32 mask)
> drivers/net/wireless/st/cw1200/debug.h:80:static inline void cw1200_debug=
_ba(struct cw1200_common *priv,
> drivers/net/wireless/st/cw1200/wsm.h:1359:static inline int wsm_get_stati=
on_id(struct cw1200_common *priv, u8 *mac)
> drivers/net/wireless/st/cw1200/wsm.h:1751:static inline int wsm_get_p2p_p=
s_modeinfo(struct cw1200_common *priv,
> drivers/net/wireless/st/cw1200/wsm.h:1792:static inline int wsm_set_overr=
ide_internal_txrate(struct cw1200_common *priv,
> drivers/net/wireless/st/cw1200/wsm.h:1851:static inline u8 wsm_queue_id_t=
o_linux(u8 queue_id)
> drivers/net/wireless/ti/wlcore/hw_ops.h:245:wlcore_hw_convert_hwaddr(stru=
ct wl1271 *wl, u32 hwaddr)
> drivers/net/wireless/ti/wlcore/io.h:152:static inline int __must_check wl=
core_read_hwaddr(struct wl1271 *wl, int hwaddr,
> drivers/net/wireless/ti/wlcore/io.h:87:static inline int __must_check wlc=
ore_raw_write_data(struct wl1271 *wl, int reg,
> drivers/net/wireless/zydas/zd1211rw/zd_chip.h:897:static inline int zd_ge=
t_encryption_type(struct zd_chip *chip, u32 *type)
> drivers/net/wireless/zydas/zd1211rw/zd_chip.h:907:static inline int zd_ch=
ip_get_basic_rates(struct zd_chip *chip, u16 *cr_rates)
> drivers/net/wireless/zydas/zd1211rw/zd_chip.h:928:static inline int zd_ge=
t_beacon_interval(struct zd_chip *chip, u32 *interval)
> drivers/pci/controller/cadence/pcie-cadence.h:302:static inline void cdns=
_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
> drivers/pci/controller/cadence/pcie-cadence.h:307:static inline void cdns=
_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
> drivers/pci/controller/cadence/pcie-cadence.h:348:static inline void cdns=
_pcie_ep_fn_writel(struct cdns_pcie *pcie, u8 fn,
> drivers/pci/controller/cadence/pcie-cadence.h:354:static inline u8 cdns_p=
cie_ep_fn_readb(struct cdns_pcie *pcie, u8 fn, u32 reg)
> drivers/pci/controller/dwc/pcie-designware.h:333:static inline u32 dw_pci=
e_readl_dbi2(struct dw_pcie *pci, u32 reg)
> drivers/scsi/aic94xx/aic94xx.h:45:static inline void asd_stringify_sas_ad=
dr(char *p, const u8 *sas_addr)
> drivers/scsi/BusLogic.h:1129:static inline void blogic_busreset(struct bl=
ogic_adapter *adapter)
> drivers/scsi/csiostor/csio_scsi.h:237:csio_put_scsi_ddp(struct csio_scsim=
 *scm, struct csio_dma_buf *ddp)
> drivers/scsi/cxlflash/common.h:294:static inline bool afu_is_ioarrin_cmd_=
mode(struct afu *afu)
> drivers/scsi/fnic/cq_exch_desc.h:162:static inline void cq_sgl_desc_dec(s=
truct cq_sgl_desc *desc_ptr,
> drivers/scsi/fnic/cq_exch_desc.h:46:static inline void cq_exch_wq_desc_de=
c(struct cq_exch_wq_desc *desc_ptr,
> drivers/scsi/fnic/fcpio.h:137:fcpio_tag_id_enc(struct fcpio_tag *tag, u32=
 id)
> drivers/scsi/fnic/fcpio.h:149:fcpio_tag_exid_enc(struct fcpio_tag *tag, u=
16 ox_id, u16 rx_id)
> drivers/scsi/fnic/fcpio.h:156:fcpio_tag_exid_dec(struct fcpio_tag *tag, u=
16 *ox_id, u16 *rx_id)
> drivers/scsi/fnic/fcpio.h:174:fcpio_header_enc(struct fcpio_header *hdr,
> drivers/scsi/fnic/fcpio.h:732:static inline void fcpio_color_enc(struct f=
cpio_fw_req *fw_req, u8 color)
> drivers/scsi/fnic/fnic_res.h:206:static inline void fnic_queue_wq_copy_de=
sc_lunmap(struct vnic_wq_copy *wq,
> drivers/scsi/fnic/vnic_wq_copy.h:69:static inline void vnic_wq_copy_desc_=
process(struct vnic_wq_copy *wq, u16 index)
> drivers/scsi/lpfc/lpfc_hw.h:3992:lpfc_bgs_get_bidir_bg_prof(uint32_t bgst=
at)
> drivers/scsi/lpfc/lpfc_hw.h:3999:lpfc_bgs_get_bidir_err_cond(uint32_t bgs=
tat)
> drivers/scsi/lpfc/lpfc_hw.h:4006:lpfc_bgs_get_bg_prof(uint32_t bgstat)
> drivers/scsi/megaraid/megaraid_sas_fusion.h:212:static inline u16 get_num=
_sge(struct RAID_CONTEXT_G35 *rctx_g35)
> drivers/scsi/nsp32_io.h:106:static inline unsigned long nsp32_mmio_read4(=
unsigned long base,
> drivers/scsi/nsp32_io.h:160:static inline void nsp32_index_write4(unsigne=
d int  base,
> drivers/scsi/nsp32_io.h:176:static inline unsigned char nsp32_mmio_index_=
read1(unsigned long base,
> drivers/scsi/nsp32_io.h:188:static inline void nsp32_mmio_index_write1(un=
signed long base,
> drivers/scsi/nsp32_io.h:201:static inline unsigned short nsp32_mmio_index=
_read2(unsigned long base,
> drivers/scsi/nsp32_io.h:213:static inline void nsp32_mmio_index_write2(un=
signed long  base,
> drivers/scsi/nsp32_io.h:236:static inline void nsp32_fifo_read(unsigned i=
nt   base,
> drivers/scsi/nsp32_io.h:251:static inline void nsp32_fifo_write(unsigned =
int   base,
> drivers/scsi/nsp32_io.h:53:static inline void nsp32_mmio_write1(unsigned =
long base,
> drivers/scsi/nsp32_io.h:64:static inline unsigned char nsp32_mmio_read1(u=
nsigned long base,
> drivers/scsi/nsp32_io.h:74:static inline void nsp32_mmio_write2(unsigned =
long  base,
> drivers/scsi/nsp32_io.h:85:static inline unsigned short nsp32_mmio_read2(=
unsigned long base,
> drivers/scsi/nsp32_io.h:95:static inline void nsp32_mmio_write4(unsigned =
long base,
> drivers/scsi/pcmcia/nsp_io.h:150:static inline void nsp_fifo16_write(unsi=
gned int   base,
> drivers/scsi/pcmcia/nsp_io.h:178:static inline void nsp_mmio_write(unsign=
ed long base,
> drivers/scsi/pcmcia/nsp_io.h:187:static inline unsigned char nsp_mmio_rea=
d(unsigned long base,
> drivers/scsi/pcmcia/nsp_io.h:197:static inline unsigned char nsp_mmio_ind=
ex_read(unsigned long base,
> drivers/scsi/pcmcia/nsp_io.h:207:static inline void nsp_mmio_index_write(=
unsigned long base,
> drivers/scsi/pcmcia/nsp_io.h:94:static inline void nsp_fifo16_read(unsign=
ed int   base,
> drivers/scsi/snic/snic_fwint.h:502:snic_color_enc(struct snic_fw_req *req=
, u8 color)
> drivers/scsi/snic/vnic_wq.h:85:static inline unsigned int svnic_wq_desc_a=
vail(struct vnic_wq *wq)
> drivers/scsi/sym53c8xx_2/sym_misc.h:91:static inline void sym_que_move(st=
ruct sym_quehead *orig,
> drivers/scsi/ufs/ufshcd.h:793:static inline void check_upiu_size(void)
> drivers/scsi/ufs/ufshcd.h:851:static inline int ufshcd_dme_st_set(struct =
ufs_hba *hba, u32 attr_sel,
> drivers/scsi/ufs/ufshcd.h:865:static inline int ufshcd_dme_peer_st_set(st=
ruct ufs_hba *hba, u32 attr_sel,
> drivers/soc/fsl/dpio/qbman-portal.h:317:static inline int qbman_result_is=
_FQDAN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:323:static inline int qbman_result_is=
_CDAN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:329:static inline int qbman_result_is=
_CSCN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:335:static inline int qbman_result_is=
_BPSCN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:341:static inline int qbman_result_is=
_CGCU(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:347:static inline int qbman_result_is=
_FQRN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:353:static inline int qbman_result_is=
_FQRNI(const struct dpaa2_dq *dq)
> drivers/soc/fsl/dpio/qbman-portal.h:359:static inline int qbman_result_is=
_FQPN(const struct dpaa2_dq *dq)
> drivers/soc/fsl/qbman/qman_priv.h:49:static inline u16 qm_mcr_querywq_get=
_chan(const struct qm_mcr_querywq *wq)
> drivers/soc/fsl/qbman/qman_priv.h:82:static inline u64 qm_mcr_querycgr_i_=
get64(const struct qm_mcr_querycgr *q)
> drivers/soc/fsl/qbman/qman_priv.h:86:static inline u64 qm_mcr_querycgr_a_=
get64(const struct qm_mcr_querycgr *q)
> drivers/staging/fwserial/dma_fifo.h:104:static inline bool dma_fifo_busy(=
struct dma_fifo *fifo)
> drivers/staging/rtl8188eu/include/rtw_mlme.h:293:static inline void clr_f=
wstate_ex(struct mlme_priv *pmlmepriv, int state)
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:2073:static inline int iee=
e80211_is_valid_mode(struct ieee80211_device *ieee, int mode)
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:2157:static inline int iee=
e80211_is_cck_rate(u8 rate)
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:2408:static inline void ie=
ee80211_increment_scans(struct ieee80211_device *ieee)
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:2413:static inline int iee=
e80211_get_scans(struct ieee80211_device *ieee)
> drivers/staging/rts5208/rtsx_card.h:1048:static inline int card_power_off=
_all(struct rtsx_chip *chip)
> drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.h:42:static in=
line void int340x_thermal_zone_set_priv_data(
> drivers/thunderbolt/tunnel.h:89:static inline bool tb_tunnel_is_usb3(cons=
t struct tb_tunnel *tunnel)
> drivers/tty/serial/8250/8250.h:342:static inline int serial_index(struct =
uart_port *port)
> drivers/usb/core/usb.h:160:static inline int is_usb_endpoint(const struct=
 device *dev)
> drivers/usb/dwc2/core.h:1271:static inline bool dwc2_is_iot(struct dwc2_h=
sotg *hsotg)
> drivers/usb/dwc2/hcd.h:524:static inline u8 dwc2_hcd_is_pipe_isoc(struct =
dwc2_hcd_pipe_info *pipe)
> drivers/usb/dwc2/hcd.h:529:static inline u8 dwc2_hcd_is_pipe_int(struct d=
wc2_hcd_pipe_info *pipe)
> drivers/usb/dwc2/hcd.h:534:static inline u8 dwc2_hcd_is_pipe_bulk(struct =
dwc2_hcd_pipe_info *pipe)
> drivers/usb/dwc2/hcd.h:539:static inline u8 dwc2_hcd_is_pipe_control(stru=
ct dwc2_hcd_pipe_info *pipe)
> drivers/usb/dwc2/hcd.h:698:static inline u32 dwc2_hcd_urb_get_status(stru=
ct dwc2_hcd_urb *dwc2_urb)
> drivers/usb/host/ohci.h:599:static inline __hc16 cpu_to_hc16p (const stru=
ct ohci_hcd *ohci, const u16 *x)
> drivers/usb/host/ohci.h:613:static inline __hc32 cpu_to_hc32p (const stru=
ct ohci_hcd *ohci, const u32 *x)
> drivers/usb/host/ohci.h:621:static inline u16 hc16_to_cpu (const struct o=
hci_hcd *ohci, const __hc16 x)
> drivers/usb/mtu3/mtu3.h:374:static inline int is_first_entry(const struct=
 list_head *list,
> drivers/usb/musb/musb_host.h:100:static inline void musb_host_poll_rh_sta=
tus(struct musb *musb)	{}
> drivers/usb/usbip/usbip_common.h:326:static inline int interface_to_busnu=
m(struct usb_interface *interface)
> drivers/usb/usbip/usbip_common.h:333:static inline int interface_to_devnu=
m(struct usb_interface *interface)
> drivers/vhost/vhost.h:307:static inline __virtio64 cpu_to_vhost64(struct =
vhost_virtqueue *vq, u64 val)
> drivers/video/fbdev/aty/atyfb.h:252:static inline void aty_st_le16(int re=
gindex, u16 val,
> drivers/video/fbdev/bt431.h:116:static inline u8 bt431_read_reg(struct bt=
431_regs *regs, int ir)
> drivers/video/fbdev/bt431.h:153:static inline u16 bt431_read_cmap(struct =
bt431_regs *regs, int cr)
> drivers/video/fbdev/bt431.h:159:static inline void bt431_write_cmap(struc=
t bt431_regs *regs, int cr, u16 value)
> drivers/video/fbdev/bt455.h:72:static inline void bt455_read_cmap_entry(s=
truct bt455_regs *regs,
> drivers/video/fbdev/bt455.h:86:static inline void bt455_write_ovly_entry(=
struct bt455_regs *regs, u8 grey)
> drivers/video/fbdev/matrox/matroxfb_base.h:179:static inline void vaddr_a=
dd(vaddr_t* va, unsigned long offs) {
> drivers/video/fbdev/savage/savagefb.h:289:static inline u16 vga_in16(int =
addr, struct savagefb_par *par)
> drivers/video/fbdev/savage/savagefb.h:294:static inline u8 vga_in32(int a=
ddr, struct savagefb_par *par)
> drivers/video/fbdev/savage/savagefb.h:309:static inline void vga_out32(in=
t addr, u32 val, struct savagefb_par *par)
> drivers/video/fbdev/savage/savagefb.h:320:static inline u8 VGArGR (u8 ind=
ex, struct savagefb_par *par)
> fs/affs/affs.h:287:affs_adjust_bitmapchecksum(struct buffer_head *bh, u32=
 val)
> fs/autofs/autofs_i.h:249:static inline void autofs_add_expiring(struct de=
ntry *dentry)
> fs/befs/endian.h:89:cpu_to_fsrun(const struct super_block *sb, befs_block=
_run n)
> fs/btrfs/ctree.h:1648:static inline unsigned long btrfs_dev_extent_chunk_=
tree_uuid(struct btrfs_dev_extent *dev)
> fs/ceph/super.h:1026:static inline int ceph_acl_chmod(struct dentry *dent=
ry, struct inode *inode)
> fs/ext4/ext4_jbd2.h:198:static inline bool ext4_journal_callback_try_del(=
handle_t *handle,
> fs/ext4/ext4_jbd2.h:338:static inline void ext4_journal_free_reserved(han=
dle_t *handle)
> fs/ext4/extents_status.h:227:static inline void ext4_es_store_status(stru=
ct extent_status *es,
> fs/f2fs/f2fs.h:3629:static inline void update_sit_info(struct f2fs_sb_inf=
o *sbi) {}
> fs/gfs2/glock.h:162:static inline int gfs2_glock_is_held_dfrd(struct gfs2=
_glock *gl)
> fs/gfs2/glock.h:167:static inline int gfs2_glock_is_held_shrd(struct gfs2=
_glock *gl)
> fs/gfs2/inode.h:35:static inline bool gfs2_is_writeback(const struct gfs2=
_sbd *sdp)
> fs/gfs2/inode.h:64:static inline int gfs2_check_inum(const struct gfs2_in=
ode *ip, u64 no_addr,
> fs/gfs2/meta_io.h:14:static inline void gfs2_buffer_clear(struct buffer_h=
ead *bh)
> fs/hpfs/hpfs.h:423:static inline bool bp_fnode_parent(struct bplus_header=
 *bp)
> fs/isofs/isofs.h:101:static inline unsigned int isonum_732(u8 *p)
> fs/isofs/isofs.h:80:static inline int isonum_712(s8 *p)
> fs/isofs/isofs.h:88:static inline unsigned int isonum_722(u8 *p)
> fs/nilfs2/bmap.h:81:static inline int nilfs_bmap_is_new_ptr(unsigned long=
 ptr)
> fs/ntfs/endian.h:24:static inline s32 sle32_to_cpu(sle32 x)
> fs/ntfs/endian.h:34:static inline s16 sle16_to_cpup(sle16 *x)
> fs/ntfs/endian.h:39:static inline s32 sle32_to_cpup(sle32 *x)
> fs/ntfs/endian.h:49:static inline sle16 cpu_to_sle16(s16 x)
> fs/ntfs/endian.h:54:static inline sle32 cpu_to_sle32(s32 x)
> fs/ntfs/endian.h:64:static inline sle16 cpu_to_sle16p(s16 *x)
> fs/ntfs/endian.h:69:static inline sle32 cpu_to_sle32p(s32 *x)
> fs/ntfs/endian.h:74:static inline sle64 cpu_to_sle64p(s64 *x)
> fs/ocfs2/extent_map.h:62:static inline int ocfs2_read_virt_block(struct i=
node *inode, u64 v_block,
> fs/ocfs2/ocfs2_fs.h:1563:static inline int ocfs2_system_inode_is_global(i=
nt type)
> fs/ocfs2/ocfs2_fs.h:1596:static inline int ocfs2_gd_is_discontig(struct o=
cfs2_group_desc *gd)
> fs/ocfs2/ocfs2.h:726:static inline u32 ocfs2_clusters_for_blocks(struct s=
uper_block *sb,
> fs/ocfs2/ocfs2.h:810:static inline unsigned long ocfs2_align_bytes_to_sec=
tors(u64 bytes)
> fs/ocfs2/ocfs2.h:815:static inline unsigned int ocfs2_page_index_to_clust=
ers(struct super_block *sb,
> fs/ocfs2/suballoc.h:149:static inline u32 ocfs2_cluster_from_desc(struct =
ocfs2_super *osb,
> fs/reiserfs/reiserfs.h:821:reiserfs_mutex_lock_nested_safe(struct mutex *=
m, unsigned int subclass,
> fs/reiserfs/reiserfs.h:832:reiserfs_down_read_safe(struct rw_semaphore *s=
em, struct super_block *s)
> fs/udf/udfend.h:28:static inline struct short_ad lesa_to_cpu(struct short=
_ad in)
> fs/udf/udfend.h:38:static inline struct short_ad cpu_to_lesa(struct short=
_ad in)
> fs/udf/udfend.h:48:static inline struct kernel_long_ad lela_to_cpu(struct=
 long_ad in)
> fs/udf/udfend.h:58:static inline struct long_ad cpu_to_lela(struct kernel=
_long_ad in)
> fs/ufs/util.h:585:static inline int ufs_is_data_ptr_zero(struct ufs_sb_pr=
ivate_info *uspi,
> fs/xfs/libxfs/xfs_format.h:415:static inline void xfs_sb_version_addproji=
d32bit(struct xfs_sb *sbp)
> fs/xfs/libxfs/xfs_fs.h:423:bstat_get_projid(const struct xfs_bstat *bs)
> fs/xfs/libxfs/xfs_health.h:163:xfs_fs_is_healthy(struct xfs_mount *mp)
> fs/xfs/libxfs/xfs_health.h:169:xfs_rt_is_healthy(struct xfs_mount *mp)
> fs/xfs/libxfs/xfs_health.h:175:xfs_ag_is_healthy(struct xfs_perag *pag)
> fs/xfs/libxfs/xfs_health.h:181:xfs_inode_is_healthy(struct xfs_inode *ip)
> fs/xfs/libxfs/xfs_log_format.h:360:static inline int xfs_ilog_fdata(int w=
)
> fs/xfs/libxfs/xfs_rmap.h:100:xfs_owner_info_pack(
> include/clocksource/timer-sp804.h:13:static inline void sp804_clocksource=
_init(void __iomem *base, const char *name)
> include/clocksource/timer-sp804.h:18:static inline void sp804_clocksource=
_and_sched_clock_init(void __iomem *base,
> include/clocksource/timer-sp804.h:24:static inline void sp804_clockevents=
_init(void __iomem *base, unsigned int irq, const char *name)
> include/crypto/acompress.h:156:static inline int crypto_has_acomp(const c=
har *alg_name, u32 type, u32 mask)
> include/crypto/internal/aead.h:117:static inline int aead_enqueue_request=
(struct aead_queue *queue,
> include/crypto/internal/hash.h:68:static inline int crypto_ahash_walk_don=
e(struct crypto_hash_walk *walk,
> include/crypto/internal/hash.h:79:static inline int crypto_ahash_walk_las=
t(struct crypto_hash_walk *walk)
> include/crypto/scatterwalk.h:48:static inline unsigned int scatterwalk_al=
igned(struct scatter_walk *walk,
> include/crypto/skcipher.h:328:static inline u32 crypto_sync_skcipher_get_=
flags(
> include/drm/drm_fb_helper.h:360:static inline int drm_fb_helper_defio_ini=
t(struct drm_fb_helper *fb_helper)
> include/drm/drm_fixed.h:149:static inline s64 drm_fixp_from_fraction(s64 =
a, s64 b)
> include/drm/drm_fixed.h:45:static inline u32 dfixed_floor(fixed20_12 A)
> include/drm/gpu_scheduler.h:201:static inline bool drm_sched_invalidate_j=
ob(struct drm_sched_job *s_job,
> include/linux/acct.h:68:static inline u32 jiffies_to_AHZ(unsigned long x)
> include/linux/acpi.h:1194:static inline int acpi_dev_prop_get(const struc=
t acpi_device *adev,
> include/linux/acpi.h:966:static inline int acpi_dev_runtime_suspend(struc=
t device *dev) { return 0; }
> include/linux/acpi.h:967:static inline int acpi_dev_runtime_resume(struct=
 device *dev) { return 0; }
> include/linux/ahci-remap.h:24:static inline unsigned int ahci_remap_base(=
int i)
> include/linux/amba/bus.h:136:static inline int amba_pclk_enable(struct am=
ba_device *dev)
> include/linux/amba/bus.h:141:static inline void amba_pclk_disable(struct =
amba_device *dev)
> include/linux/ata.h:725:static inline bool ata_id_has_wcache(const u16 *i=
d)
> include/linux/ata.h:733:static inline bool ata_id_has_pm(const u16 *id)
> include/linux/ata.h:802:static inline bool ata_id_sct_features_ctrl(const=
 u16 *id)
> include/linux/ata.h:807:static inline bool ata_id_sct_error_recovery_ctrl=
(const u16 *id)
> include/linux/ata.h:812:static inline bool ata_id_sct_long_sector_access(=
const u16 *id)
> include/linux/backing-dev.h:223:static inline int bdi_sched_wait(void *wo=
rd)
> include/linux/backing-dev.h:481:static inline int inode_rw_congested(stru=
ct inode *inode)
> include/linux/bcma/bcma.h:367:static inline u32 bcma_read8(struct bcma_de=
vice *core, u16 offset)
> include/linux/bcma/bcma.h:380:void bcma_write8(struct bcma_device *core, =
u16 offset, u32 value)
> include/linux/bio.h:641:static inline void bio_list_merge_head(struct bio=
_list *bl,
> include/linux/blkdev.h:661:static inline bool blk_account_rq(struct reque=
st *rq)
> include/linux/bottom_half.h:25:static inline void local_bh_enable_ip(unsi=
gned long ip)
> include/linux/btree-128.h:12:static inline int btree_init128(struct btree=
_head128 *head)
> include/linux/btree-128.h:17:static inline void btree_destroy128(struct b=
tree_head128 *head)
> include/linux/btree-128.h:41:static inline int btree_insert128(struct btr=
ee_head128 *head, u64 k1, u64 k2,
> include/linux/btree-128.h:49:static inline int btree_update128(struct btr=
ee_head128 *head, u64 k1, u64 k2,
> include/linux/btree-128.h:6:static inline void btree_init_mempool128(stru=
ct btree_head128 *head,
> include/linux/btree-128.h:77:static inline int btree_merge128(struct btre=
e_head128 *target,
> include/linux/btree-128.h:90:static inline size_t btree_visitor128(struct=
 btree_head128 *head,
> include/linux/btree-128.h:98:static inline size_t btree_grim_visitor128(s=
truct btree_head128 *head,
> include/linux/can/dev/peak_canfd.h:213:static inline int pucan_error_get_=
channel(const struct pucan_error_msg *msg)
> include/linux/can/dev/peak_canfd.h:232:static inline int pucan_status_get=
_channel(const struct pucan_status_msg *msg)
> include/linux/capability.h:142:static inline kernel_cap_t cap_invert(cons=
t kernel_cap_t c)
> include/linux/ceph/ceph_frag.h:39:static inline __u32 ceph_frag_mask_shif=
t(__u32 f)
> include/linux/ceph/pagelist.h:52:static inline int ceph_pagelist_encode_1=
6(struct ceph_pagelist *pl, u16 v)
> include/linux/ceph/rados.h:326:static inline int ceph_osd_op_type_lock(in=
t op)
> include/linux/ceph/rados.h:330:static inline int ceph_osd_op_type_data(in=
t op)
> include/linux/ceph/rados.h:334:static inline int ceph_osd_op_type_attr(in=
t op)
> include/linux/ceph/rados.h:338:static inline int ceph_osd_op_type_exec(in=
t op)
> include/linux/ceph/rados.h:342:static inline int ceph_osd_op_type_pg(int =
op)
> include/linux/ceph/rados.h:346:static inline int ceph_osd_op_type_multi(i=
nt op)
> include/linux/ceph/rados.h:351:static inline int ceph_osd_op_mode_subop(i=
nt op)
> include/linux/ceph/rados.h:355:static inline int ceph_osd_op_mode_read(in=
t op)
> include/linux/ceph/rados.h:360:static inline int ceph_osd_op_mode_modify(=
int op)
> include/linux/crypto.h:667:static inline int crypto_tfm_alg_priority(stru=
ct crypto_tfm *tfm)
> include/linux/dcache.h:374:static inline bool d_managed(const struct dent=
ry *dentry)
> include/linux/dcache.h:432:static inline bool d_is_file(const struct dent=
ry *dentry)
> include/linux/dcache.h:498:static inline bool d_is_fallthru(const struct =
dentry *dentry)
> include/linux/dma/ti-cppi5.h:171:static inline void cppi5_desc_dump(void =
*desc, u32 size)
> include/linux/dma/ti-cppi5.h:448:static inline u32 cppi5_hdesc_get_pkttyp=
e(struct cppi5_host_desc_t *desc)
> include/linux/dma/ti-cppi5.h:459:static inline void cppi5_hdesc_set_pktty=
pe(struct cppi5_host_desc_t *desc,
> include/linux/dma/ti-cppi5.h:488:static inline void cppi5_hdesc_get_obuf(=
struct cppi5_host_desc_t *desc,
> include/linux/dma/ti-cppi5.h:515:cppi5_hdesc_get_next_hbdesc(struct cppi5=
_host_desc_t *desc)
> include/linux/flex_proportions.h:64:void fprop_inc_single(struct fprop_gl=
obal *p, struct fprop_local_single *pl)
> include/linux/flex_proportions.h:94:void fprop_inc_percpu(struct fprop_gl=
obal *p, struct fprop_local_percpu *pl)
> include/linux/freezer.h:271:static inline bool try_to_freeze_nowarn(void)=
 { return false; }
> include/linux/fs_enet_pd.h:154:static inline int fs_get_id(struct fs_plat=
form_info *fpi)
> include/linux/fs_enet_pd.h:41:static inline int fs_get_fec_index(enum fs_=
id id)
> include/linux/fs_enet_pd.h:48:static inline int fs_get_fcc_index(enum fs_=
id id)
> include/linux/fs_enet_pd.h:55:static inline int fs_get_scc_index(enum fs_=
id id)
> include/linux/fs.h:3601:static inline bool dir_relax(struct inode *inode)
> include/linux/fs.h:829:static inline void inode_lock_shared_nested(struct=
 inode *inode, unsigned subclass)
> include/linux/fsl/mc.h:426:static inline bool is_fsl_mc_bus_dpni(const st=
ruct fsl_mc_device *mc_dev)
> include/linux/fsl/mc.h:436:static inline bool is_fsl_mc_bus_dpsw(const st=
ruct fsl_mc_device *mc_dev)
> include/linux/fsl/mc.h:456:static inline bool is_fsl_mc_bus_dpmac(const s=
truct fsl_mc_device *mc_dev)
> include/linux/fsl/mc.h:461:static inline bool is_fsl_mc_bus_dprtc(const s=
truct fsl_mc_device *mc_dev)
> include/linux/fsl/mc.h:466:static inline bool is_fsl_mc_bus_dpseci(const =
struct fsl_mc_device *mc_dev)
> include/linux/fs_uart_pd.h:32:static inline int fs_uart_id_fsid2scc(int i=
d)
> include/linux/fs_uart_pd.h:42:static inline int fs_uart_id_fsid2smc(int i=
d)
> include/linux/fs_uart_pd.h:62:static inline int fs_uart_get_id(struct fs_=
uart_platform_info *fpi)
> include/linux/ftrace.h:969:static inline void set_tsk_trace_trace(struct =
task_struct *tsk)
> include/linux/ftrace.h:974:static inline void clear_tsk_trace_trace(struc=
t task_struct *tsk)
> include/linux/ftrace.h:979:static inline int test_tsk_trace_trace(struct =
task_struct *tsk)
> include/linux/ftrace.h:984:static inline void set_tsk_trace_graph(struct =
task_struct *tsk)
> include/linux/ftrace.h:989:static inline void clear_tsk_trace_graph(struc=
t task_struct *tsk)
> include/linux/ftrace.h:994:static inline int test_tsk_trace_graph(struct =
task_struct *tsk)
> include/linux/gameport.h:133:static inline int gameport_pin_driver(struct=
 gameport *gameport)
> include/linux/gameport.h:138:static inline void gameport_unpin_driver(str=
uct gameport *gameport)
> include/linux/genl_magic_struct.h:190:static inline void ct_assert_unique=
_operations(void)
> include/linux/genl_magic_struct.h:209:static inline void ct_assert_unique=
_top_level_attributes(void)
> include/linux/greybus/operation.h:208:static inline int gb_operation_unid=
irectional(struct gb_connection *connection,
> include/linux/highmem.h:50:static inline void totalhigh_pages_dec(void)
> include/linux/highmem.h:60:static inline void totalhigh_pages_set(long va=
l)
> include/linux/hrtimer.h:294:static inline s64 hrtimer_get_expires_ns(cons=
t struct hrtimer *timer)
> include/linux/hw_breakpoint.h:32:static inline unsigned long hw_breakpoin=
t_addr(struct perf_event *bp)
> include/linux/hw_breakpoint.h:42:static inline unsigned long hw_breakpoin=
t_len(struct perf_event *bp)
> include/linux/hyperv.h:1010:static inline void set_low_latency_mode(struc=
t vmbus_channel *c)
> include/linux/hyperv.h:1015:static inline void clear_low_latency_mode(str=
uct vmbus_channel *c)
> include/linux/hyperv.h:487:hv_ringbuffer_pending_size(const struct hv_rin=
g_buffer_info *rbi)
> include/linux/hyperv.h:967:static inline void set_channel_affinity_state(=
struct vmbus_channel *c,
> include/linux/i3c/device.h:195:static inline void i3cdev_set_drvdata(stru=
ct i3c_device *i3cdev,
> include/linux/ide.h:1466:static inline void ide_dma_verbose(ide_drive_t *=
drive) { ; }
> include/linux/interrupt.h:436:static inline void disable_irq_lockdep(unsi=
gned int irq)
> include/linux/iommu-helper.h:8:static inline unsigned long iommu_device_m=
ax_index(unsigned long size,
> include/linux/irqdesc.h:273:__irq_set_preflow_handler(unsigned int irq, i=
rq_preflow_handler_t handler)
> include/linux/irq.h:261:static inline void irqd_mark_affinity_was_set(str=
uct irq_data *d)
> include/linux/irq.h:401:static inline void irqd_clr_msi_nomask_quirk(stru=
ct irq_data *d)
> include/linux/irq.h:743:static inline void irq_set_thread(unsigned int ir=
q)
> include/linux/irq.h:921:static inline unsigned int irq_alloc_hwirq(int no=
de)
> include/linux/irq.h:926:static inline void irq_free_hwirq(unsigned int ir=
q)
> include/linux/kbd_kern.h:123:static inline void chg_vc_kbd_mode(struct kb=
d_struct * kbd, int flag)
> include/linux/kernel.h:438:static inline int __must_check kstrtos64_from_=
user(const char __user *s, size_t count, unsigned int base, s64 *res)
> include/linux/ktime.h:193:static inline ktime_t ktime_sub_ms(const ktime_=
t kt, const u64 msec)
> include/linux/kvm_host.h:1063:static inline int memslot_id(struct kvm *kv=
m, gfn_t gfn)
> include/linux/kvm_host.h:246:static inline bool kvm_vcpu_mapped(struct kv=
m_host_map *map)
> include/linux/led-class-flash.h:121:static inline int devm_led_classdev_f=
lash_register(struct device *parent,
> include/linux/libata.h:1649:static inline bool ata_fpdma_read_log_support=
ed(struct ata_device *dev)
> include/linux/libata.h:1787:static inline int ata_using_mwdma(struct ata_=
device *adev)
> include/linux/libata.h:95:static inline u32 ata_msg_init(int dval, int de=
fault_msg_enable_bits)
> include/linux/linkmode.h:69:static inline void linkmode_change_bit(int nr=
, volatile unsigned long *addr)
> include/linux/memcontrol.h:1167:static inline void __inc_memcg_state(stru=
ct mem_cgroup *memcg,
> include/linux/memcontrol.h:1174:static inline void __dec_memcg_state(stru=
ct mem_cgroup *memcg,
> include/linux/memcontrol.h:1181:static inline void __inc_memcg_page_state=
(struct page *page,
> include/linux/memcontrol.h:1188:static inline void __dec_memcg_page_state=
(struct page *page,
> include/linux/memcontrol.h:1194:static inline void __inc_lruvec_state(str=
uct lruvec *lruvec,
> include/linux/memcontrol.h:1200:static inline void __dec_lruvec_state(str=
uct lruvec *lruvec,
> include/linux/memcontrol.h:1212:static inline void __dec_lruvec_page_stat=
e(struct page *page,
> include/linux/memcontrol.h:1229:static inline void inc_memcg_state(struct=
 mem_cgroup *memcg,
> include/linux/memcontrol.h:1236:static inline void dec_memcg_state(struct=
 mem_cgroup *memcg,
> include/linux/memcontrol.h:1243:static inline void inc_memcg_page_state(s=
truct page *page,
> include/linux/memcontrol.h:1250:static inline void dec_memcg_page_state(s=
truct page *page,
> include/linux/memory_hotplug.h:251:static inline int mhp_notimplemented(c=
onst char *func)
> include/linux/mfd/abx500/ab8500.h:415:static inline int is_ab8500_1p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:443:static inline int is_ab8505_1p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:453:static inline int is_ab9540_1p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:458:static inline int is_ab9540_2p0(str=
uct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:467:static inline int is_ab9540_3p0(str=
uct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:472:static inline int is_ab8540_1p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:477:static inline int is_ab8540_1p1_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:487:static inline int is_ab8540_2p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:492:static inline int is_ab8540_2p0(str=
uct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:497:static inline int is_ab8505_2p0_ear=
lier(struct ab8500 *ab)
> include/linux/mfd/abx500/ab8500.h:502:static inline int is_ab9540_2p0_or_=
earlier(struct ab8500 *ab)
> include/linux/mfd/as3722.h:391:static inline int as3722_write(struct as37=
22 *as3722, u32 reg, u32 value)
> include/linux/mfd/dbx500-prcmu.h:227:static inline u8 prcmu_get_power_sta=
te_result(void)
> include/linux/mfd/dbx500-prcmu.h:542:static inline void prcmu_set(unsigne=
d int reg, u32 bits)
> include/linux/mfd/dbx500-prcmu.h:547:static inline void prcmu_clear(unsig=
ned int reg, u32 bits)
> include/linux/mfd/ipaq-micro.h:142:ipaq_micro_tx_msg_async(struct ipaq_mi=
cro *micro,
> include/linux/mfd/max14577-private.h:464:static inline int max14577_bulk_=
write(struct regmap *map, u8 reg, u8 *buf,
> include/linux/mfd/rc5t583.h:357:static inline int rc5t583_update(struct d=
evice *dev, unsigned int reg,
> include/linux/mfd/smsc.h:37:static inline int smsc_read(struct device *ch=
ild, unsigned int reg,
> include/linux/mfd/smsc.h:45:static inline int smsc_write(struct device *c=
hild, unsigned int reg,
> include/linux/mfd/sta2x11-mfd.h:196:sta2x11_apbreg_mask(struct pci_dev *p=
dev, u32 reg, u32 mask, u32 val)
> include/linux/mfd/sta2x11-mfd.h:229:u32 sta2x11_sctl_mask(struct pci_dev =
*pdev, u32 reg, u32 mask, u32 val)
> include/linux/mfd/sta2x11-mfd.h:368:u32 sta2x11_apb_soc_regs_mask(struct =
pci_dev *pdev, u32 reg, u32 mask, u32 val)
> include/linux/mfd/tps65910.h:946:static inline int tps65910_irq_get_virq(=
struct tps65910 *tps65910, int irq)
> include/linux/mfd/tps80031.h:627:static inline int tps80031_irq_get_virq(=
struct device *dev, int irq)
> include/linux/mfd/twl.h:784:static inline int twl4030charger_usb_en(int e=
nable) { return 0; }
> include/linux/mfd/wm8350/core.h:679:static inline void wm8350_unmask_irq(=
struct wm8350 *wm8350, int irq)
> include/linux/mfd/wm8994/core.h:101:static inline int wm8994_bulk_read(st=
ruct wm8994 *wm8994, unsigned short reg,
> include/linux/mISDNif.h:358:clear_channelmap(u_int nr, u_char *map)
> include/linux/mlx5/device.h:830:static inline u8 get_cqe_l3_hdr_type(stru=
ct mlx5_cqe64 *cqe)
> include/linux/mm.h:1220:static inline bool cpupid_cpu_unset(int cpupid)
> include/linux/mm.h:64:static inline void totalram_pages_dec(void)
> include/linux/mmzone.h:776:static inline bool pgdat_is_empty(pg_data_t *p=
gdat)
> include/linux/module.h:131:	static inline initcall_t __maybe_unused __ini=
ttest(void)		\
> include/linux/module.h:137:	static inline exitcall_t __maybe_unused __exi=
ttest(void)		\
> include/linux/mtd/mtd.h:368:static inline void mtd_set_pairing_scheme(str=
uct mtd_info *mtd,
> include/linux/mtd/spi-nor.h:202:static inline bool spi_nor_protocol_is_dt=
r(enum spi_nor_protocol proto)
> include/linux/netdevice.h:3032:static inline int unregister_gifconf(unsig=
ned int family)
> include/linux/netdevice.h:4549:static inline int netdev_class_create_file=
(const struct class_attribute *class_attr)
> include/linux/netdevice.h:4554:static inline void netdev_class_remove_fil=
e(const struct class_attribute *class_attr)
> include/linux/netdevice.h:4795:static inline bool netdev_unregistering(co=
nst struct net_device *dev)
> include/linux/netpoll.h:113:static inline void netpoll_netdev_init(struct=
 net_device *dev)
> include/linux/nodemask.h:442:static inline int next_memory_node(int nid)
> include/linux/nsproxy.h:78:static inline void put_nsproxy(struct nsproxy =
*ns)
> include/linux/osq_lock.h:36:static inline bool osq_is_locked(struct optim=
istic_spin_queue *lock)
> include/linux/pata_arasan_cf_data.h:43:set_arasan_cf_pdata(struct platfor=
m_device *pdev, struct arasan_cf_pdata *data)
> include/linux/pci-acpi.h:32:static inline acpi_handle acpi_find_root_brid=
ge_handle(struct pci_dev *pdev)
> include/linux/pci-dma-compat.h:100:pci_dma_sync_sg_for_device(struct pci_=
dev *hwdev, struct scatterlist *sg,
> include/linux/pci.h:1124:static inline int pcie_capability_clear_dword(st=
ruct pci_dev *dev, int pos,
> include/linux/pci.h:1621:pci_request_io_regions(struct pci_dev *pdev, con=
st char *name)
> include/linux/pci.h:1628:pci_release_io_regions(struct pci_dev *pdev)
> include/linux/phy.h:981:static inline int phy_hwtstamp(struct phy_device =
*phydev, struct ifreq *ifr)
> include/linux/phy.h:986:static inline bool phy_rxtstamp(struct phy_device=
 *phydev, struct sk_buff *skb,
> include/linux/phy.h:998:static inline void phy_txtstamp(struct phy_device=
 *phydev, struct sk_buff *skb,
> include/linux/pnp.h:115:static inline resource_size_t pnp_mem_end(struct =
pnp_dev *dev,
> include/linux/pnp.h:69:static inline resource_size_t pnp_port_end(struct =
pnp_dev *dev,
> include/linux/posix-timers.h:49:static inline clockid_t fd_to_clockid(con=
st int fd)
> include/linux/power_supply.h:467:static inline bool power_supply_is_watt_=
property(enum power_supply_property psp)
> include/linux/property.h:168:static inline int device_property_count_u64(=
struct device *dev, const char *propname)
> include/linux/property.h:203:static inline int fwnode_property_count_u8(c=
onst struct fwnode_handle *fwnode,
> include/linux/ptr_ring.h:131:static inline int ptr_ring_produce_fallback(=
struct ptr_ring *r, void *ptr)
> include/linux/ptr_ring.h:74:static inline bool ptr_ring_full_irq(struct p=
tr_ring *r)
> include/linux/ptr_ring.h:85:static inline bool ptr_ring_full_any(struct p=
tr_ring *r)
> include/linux/ptr_ring.h:97:static inline bool ptr_ring_full_bh(struct pt=
r_ring *r)
> include/linux/pwm.h:123:static inline void pwm_set_duty_cycle(struct pwm_=
device *pwm, unsigned int duty)
> include/linux/pwm.h:474:static inline int pwmchip_add_inversed(struct pwm=
_chip *chip)
> include/linux/quotaops.h:345:static inline int dquot_prealloc_block(struc=
t inode *inode, qsize_t nr)
> include/linux/regulator/consumer.h:625:static inline int regulator_is_sup=
ported_voltage_tol(struct regulator *regulator,
> include/linux/resource_ext.h:34:static inline void resource_list_add(stru=
ct resource_entry *entry,
> include/linux/sbitmap.h:323:static inline void sbitmap_clear_bit_unlock(s=
truct sbitmap *sb,
> include/linux/seqlock.h:588:static inline void read_seqlock_excl_bh(seqlo=
ck_t *sl)
> include/linux/seqlock.h:593:static inline void read_sequnlock_excl_bh(seq=
lock_t *sl)
> include/linux/seqlock.h:598:static inline void read_seqlock_excl_irq(seql=
ock_t *sl)
> include/linux/seqlock.h:603:static inline void read_sequnlock_excl_irq(se=
qlock_t *sl)
> include/linux/sh_clk.h:146:static inline int __deprecated sh_clk_mstp32_r=
egister(struct clk *clks, int nr)
> include/linux/signal.h:220:static inline int sigtestsetmask(sigset_t *set=
, unsigned long mask)
> include/linux/signal.h:308:static inline void disallow_signal(int sig)
> include/linux/skb_array.h:106:static inline int skb_array_consume_batched=
(struct skb_array *a,
> include/linux/skb_array.h:117:static inline int skb_array_consume_batched=
_irq(struct skb_array *a,
> include/linux/skb_array.h:128:static inline int skb_array_consume_batched=
_any(struct skb_array *a,
> include/linux/skb_array.h:140:static inline int skb_array_consume_batched=
_bh(struct skb_array *a,
> include/linux/skb_array.h:160:static inline int skb_array_peek_len(struct=
 skb_array *a)
> include/linux/skb_array.h:165:static inline int skb_array_peek_len_irq(st=
ruct skb_array *a)
> include/linux/skb_array.h:170:static inline int skb_array_peek_len_bh(str=
uct skb_array *a)
> include/linux/skb_array.h:175:static inline int skb_array_peek_len_any(st=
ruct skb_array *a)
> include/linux/skb_array.h:190:static inline void skb_array_unconsume(stru=
ct skb_array *a,
> include/linux/skb_array.h:196:static inline int skb_array_resize(struct s=
kb_array *a, int size, gfp_t gfp)
> include/linux/skb_array.h:211:static inline void skb_array_cleanup(struct=
 skb_array *a)
> include/linux/skb_array.h:32:static inline bool __skb_array_full(struct s=
kb_array *a)
> include/linux/skb_array.h:47:static inline int skb_array_produce_irq(stru=
ct skb_array *a, struct sk_buff *skb)
> include/linux/skb_array.h:52:static inline int skb_array_produce_bh(struc=
t skb_array *a, struct sk_buff *skb)
> include/linux/skb_array.h:57:static inline int skb_array_produce_any(stru=
ct skb_array *a, struct sk_buff *skb)
> include/linux/skb_array.h:81:static inline bool skb_array_empty_bh(struct=
 skb_array *a)
> include/linux/skb_array.h:86:static inline bool skb_array_empty_irq(struc=
t skb_array *a)
> include/linux/skb_array.h:91:static inline bool skb_array_empty_any(struc=
t skb_array *a)
> include/linux/skbuff.h:1498:static inline void skb_zcopy_abort(struct sk_=
buff *skb)
> include/linux/skbuff.h:3737:static inline ktime_t net_invalid_timestamp(v=
oid)
> include/linux/skmsg.h:172:static inline void sk_msg_clear_meta(struct sk_=
msg *msg)
> include/linux/slimbus.h:170:static inline void slim_set_devicedata(struct=
 slim_device *dev, void *data)
> include/linux/spmi.h:55:static inline void spmi_device_set_drvdata(struct=
 spmi_device *sdev, void *data)
> include/linux/string_helpers.h:60:static inline int string_escape_mem_any=
_np(const char *src, size_t isz,
> include/linux/string_helpers.h:72:static inline int string_escape_str_any=
_np(const char *src, char *dst,
> include/linux/sunrpc/svc.h:211:static inline void svc_ungetu32(struct kve=
c *iov)
> include/linux/sunrpc/svc_xprt.h:191:static inline unsigned short svc_xprt=
_remote_port(const struct svc_xprt *xprt)
> include/linux/sunrpc/xprt.h:441:static inline int xprt_test_and_clear_con=
nected(struct rpc_xprt *xprt)
> include/linux/sunrpc/xprt.h:453:static inline int xprt_connecting(struct =
rpc_xprt *xprt)
> include/linux/superhyway.h:89:superhyway_write_vcr(struct superhyway_devi=
ce *dev, unsigned long base,
> include/linux/thunderbolt.h:369:static inline void tb_service_put(struct =
tb_service *svc)
> include/linux/timerqueue.h:51:static inline bool timerqueue_node_expires(=
struct timerqueue_node *node)
> include/linux/tpm.h:344:static inline u16 tpm_buf_tag(struct tpm_buf *buf=
)
> include/linux/ucb1400.h:135:static inline u16 ucb1400_gpio_get_direction(=
struct snd_ac97 *ac97, u16 gpio)
> include/linux/usb.h:139:usb_find_int_out_endpoint(struct usb_host_interfa=
ce *alt,
> include/linux/usb.h:146:usb_find_last_bulk_in_endpoint(struct usb_host_in=
terface *alt,
> include/linux/usb.h:153:usb_find_last_bulk_out_endpoint(struct usb_host_i=
nterface *alt,
> include/linux/usb.h:1812:static inline int usb_get_ptm_status(struct usb_=
device *dev, void *data)
> include/linux/usb/pd_ado.h:31:static inline unsigned int usb_pd_ado_fixed=
_batt(u32 ado)
> include/linux/usb/pd_ado.h:37:static inline unsigned int usb_pd_ado_hot_s=
wap_batt(u32 ado)
> include/linux/usb/pd.h:158:static inline unsigned int pd_ext_header_chunk=
_num(u16 ext_header)
> include/linux/usb/phy.h:199:usb_phy_vbus_on(struct usb_phy *x)
> include/linux/usb/phy.h:208:usb_phy_vbus_off(struct usb_phy *x)
> include/linux/uuid.h:46:static inline void import_guid(guid_t *dst, const=
 __u8 *src)
> include/linux/uuid.h:71:static inline void import_uuid(uuid_t *dst, const=
 __u8 *src)
> include/linux/uuid.h:76:static inline void export_uuid(__u8 *dst, const u=
uid_t *src)
> include/linux/virtio_config.h:201:int virtio_find_vqs_ctx(struct virtio_d=
evice *vdev, unsigned nvqs,
> include/linux/vlynq.h:107:static inline u32 vlynq_mem_start(struct vlynq_=
device *dev)
> include/linux/vlynq.h:112:static inline u32 vlynq_mem_end(struct vlynq_de=
vice *dev)
> include/linux/vlynq.h:117:static inline u32 vlynq_mem_len(struct vlynq_de=
vice *dev)
> include/linux/vlynq.h:122:static inline int vlynq_virq_to_irq(struct vlyn=
q_device *dev, int virq)
> include/linux/vlynq.h:131:static inline int vlynq_irq_to_virq(struct vlyn=
q_device *dev, int irq)
> include/linux/vlynq.h:92:static inline int vlynq_register_driver(struct v=
lynq_driver *driver)
> include/linux/vringh.h:114:static inline void vringh_iov_reset(struct vri=
ngh_iov *iov)
> include/linux/vringh.h:176:static inline void vringh_kiov_reset(struct vr=
ingh_kiov *kiov)
> include/linux/vt_kern.h:117:static inline void con_protect_unimap(struct =
vc_data *vc, int rdonly)
> include/media/tpg/v4l2-tpg.h:493:static inline unsigned tpg_calc_line_wid=
th(const struct tpg_data *tpg,
> include/media/tpg/v4l2-tpg.h:628:static inline bool tpg_g_hflip(const str=
uct tpg_data *tpg)
> include/media/tpg/v4l2-tpg.h:638:static inline bool tpg_g_vflip(const str=
uct tpg_data *tpg)
> include/media/tpg/v4l2-tpg.h:643:static inline bool tpg_pattern_is_static=
(const struct tpg_data *tpg)
> include/media/v4l2-common.h:509:static inline bool v4l2_is_format_bayer(c=
onst struct v4l2_format_info *f)
> include/media/v4l2-mem2mem.h:405:static inline void v4l2_m2m_set_dst_buff=
ered(struct v4l2_m2m_ctx *m2m_ctx,
> include/net/ax25.h:197:static inline void ax25_hold_route(ax25_route *ax2=
5_rt)
> include/net/bluetooth/hci_core.h:794:static inline __u8 hci_conn_lookup_t=
ype(struct hci_dev *hdev, __u16 handle)
> include/net/cipso_ipv4.h:154:static inline int cipso_v4_doi_domhsh_add(st=
ruct cipso_v4_doi *doi_def,
> include/net/cipso_ipv4.h:160:static inline int cipso_v4_doi_domhsh_remove=
(struct cipso_v4_doi *doi_def,
> include/net/flow.h:209:static inline unsigned int flow_key_size(u16 famil=
y)
> include/net/genetlink.h:114:static inline int genl_err_attr(struct genl_i=
nfo *info, int err,
> include/net/ipv6.h:911:static inline void ip6_set_txhash(struct sock *sk)=
 { }
> include/net/netfilter/nf_tables.h:149:static inline void nft_data_debug(c=
onst struct nft_data *data)
> include/net/nfc/hci.h:170:static inline int nfc_hci_set_vendor_cmds(struc=
t nfc_hci_dev *hdev,
> include/net/nfc/nci_core.h:344:static inline int nci_set_vendor_cmds(stru=
ct nci_dev *ndev,
> include/net/pkt_cls.h:119:int tc_setup_cb_block_register(struct tcf_block=
 *block, flow_setup_cb_t *cb,
> include/net/pkt_cls.h:126:void tc_setup_cb_block_unregister(struct tcf_bl=
ock *block, flow_setup_cb_t *cb,
> include/net/pkt_sched.h:64:psched_tdiff_bounded(psched_time_t tv1, psched=
_time_t tv2, psched_time_t bound)
> include/net/sch_generic.h:1065:static inline unsigned int qdisc_queue_dro=
p_head(struct Qdisc *sch,
> include/net/sch_generic.h:465:static inline int qdisc_qlen_cpu(const stru=
ct Qdisc *q)
> include/net/sch_generic.h:729:static inline void qdisc_reset_all_tx(struc=
t net_device *dev)
> include/net/udplite.h:74:static inline __wsum udplite_csum_outgoing(struc=
t sock *sk, struct sk_buff *skb)
> include/rdma/ib_addr.h:283:static inline u16 rdma_get_vlan_id(union ib_gi=
d *dgid)
> include/rdma/iba.h:12:static inline u32 _iba_get8(const u8 *ptr)
> include/rdma/iba.h:17:static inline void _iba_set8(u8 *ptr, u32 mask, u32=
 prep_value)
> include/rdma/iba.h:22:static inline u16 _iba_get16(const __be16 *ptr)
> include/rdma/iba.h:27:static inline void _iba_set16(__be16 *ptr, u16 mask=
, u16 prep_value)
> include/rdma/iba.h:32:static inline u32 _iba_get32(const __be32 *ptr)
> include/rdma/iba.h:37:static inline void _iba_set32(__be32 *ptr, u32 mask=
, u32 prep_value)
> include/rdma/iba.h:51:static inline void _iba_set64(__be64 *ptr, u64 mask=
, u64 prep_value)
> include/rdma/ib_verbs.h:3066:static inline bool rdma_protocol_raw_packet(=
const struct ib_device *device, u8 port_num)
> include/rdma/ib_verbs.h:4064:static inline void ib_dma_unmap_sg_attrs(str=
uct ib_device *dev,
> include/scsi/fc_frame.h:237:static inline bool fc_frame_is_cmd(const stru=
ct fc_frame *fp)
> include/scsi/scsi_transport.h:57:scsi_transport_reserve_target(struct scs=
i_transport_template * t, int space)
> include/soc/fsl/bman.h:65:static inline u8 bm_buffer_get_bpid(const struc=
t bm_buffer *buf)
> include/soc/fsl/qman.h:154:static inline int qm_fd_get_len_big(const stru=
ct qm_fd *fd)
> include/soc/fsl/qman.h:405:static inline dma_addr_t qm_fqd_stashing_addr(=
const struct qm_fqd *fqd)
> include/soc/fsl/qman.h:410:static inline u64 qm_fqd_context_a_get64(const=
 struct qm_fqd *fqd)
> include/soc/fsl/qman.h:451:static inline int qm_fqd_get_taildrop(const st=
ruct qm_fqd *fqd)
> include/soc/fsl/qman.h:468:static inline u8 qm_fqd_get_stashing(const str=
uct qm_fqd *fqd)
> include/soc/fsl/qman.h:578:static inline u64 qm_cgr_cs_thres_get64(const =
struct qm_cgr_cs_thres *th)
> include/sound/emu10k1.h:1844:static inline unsigned int snd_emu10k1_wc(st=
ruct snd_emu10k1 *emu) { return (inl(emu->port + WC) >> 6) & 0xfffff; }
> include/sound/hda_codec.h:367:snd_hda_queue_unsol_event(struct hda_bus *b=
us, u32 res, u32 res_ex)
> include/sound/hdaudio.h:656:static inline unsigned int snd_array_index(st=
ruct snd_array *array, void *ptr)
> include/sound/pcm.h:1110:snd_pcm_kernel_read(struct snd_pcm_substream *su=
bstream,
> include/sound/pcm_params.h:26:static inline size_t snd_mask_sizeof(void)
> include/sound/pcm_params.h:294:static inline int snd_interval_eq(const st=
ruct snd_interval *i1, const struct snd_interval *i2)
> include/sound/pcm_params.h:87:static inline void snd_mask_set_range(struc=
t snd_mask *mask,
> include/sound/soc.h:1316:void snd_soc_of_parse_audio_prefix(struct snd_so=
c_card *card,
> include/uapi/linux/auto_fs.h:143:static inline void set_autofs_type_any(u=
nsigned int *type)
> include/uapi/linux/cec-funcs.h:1009:static inline void cec_ops_tuner_devi=
ce_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1024:static inline void cec_msg_give_tuner=
_device_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1035:static inline void cec_ops_give_tuner=
_device_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1041:static inline void cec_msg_select_ana=
logue_service(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1054:static inline void cec_ops_select_ana=
logue_service(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1064:static inline void cec_msg_select_dig=
ital_service(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:106:static inline void cec_msg_set_stream_=
path(struct cec_msg *msg, __u16 phys_addr)
> include/uapi/linux/cec-funcs.h:1072:static inline void cec_ops_select_dig=
ital_service(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1078:static inline void cec_msg_tuner_step=
_decrement(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1084:static inline void cec_msg_tuner_step=
_increment(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1102:static inline void cec_ops_device_ven=
dor_id(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1108:static inline void cec_msg_give_devic=
e_vendor_id(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1116:static inline void cec_msg_vendor_com=
mand(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1126:static inline void cec_ops_vendor_com=
mand(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1137:static inline void cec_msg_vendor_com=
mand_with_id(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1151:static inline void cec_ops_vendor_com=
mand_with_id(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:115:static inline void cec_ops_set_stream_=
path(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1163:static inline void cec_msg_vendor_rem=
ote_button_down(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1174:static inline void cec_ops_vendor_rem=
ote_button_down(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1185:static inline void cec_msg_vendor_rem=
ote_button_up(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1193:static inline void cec_msg_set_osd_st=
ring(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1233:static inline void cec_ops_set_osd_na=
me(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:123:static inline void cec_msg_standby(str=
uct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1244:static inline void cec_msg_give_osd_n=
ame(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1254:static inline void cec_msg_menu_statu=
s(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1262:static inline void cec_ops_menu_statu=
s(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1268:static inline void cec_msg_menu_reque=
st(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1278:static inline void cec_ops_menu_reque=
st(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1298:static inline void cec_msg_user_contr=
ol_pressed(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:131:static inline void cec_msg_record_off(=
struct cec_msg *msg, int reply)
> include/uapi/linux/cec-funcs.h:1328:static inline void cec_ops_user_contr=
ol_pressed(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1357:static inline void cec_msg_user_contr=
ol_released(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1366:static inline void cec_msg_report_pow=
er_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1374:static inline void cec_ops_report_pow=
er_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1380:static inline void cec_msg_give_devic=
e_power_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1398:static inline void cec_ops_feature_ab=
ort(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1406:static inline void cec_msg_reply_feat=
ure_abort(struct cec_msg *msg, __u8 reason)
> include/uapi/linux/cec-funcs.h:1415:static inline void cec_msg_abort(stru=
ct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1423:static inline void cec_msg_report_aud=
io_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1432:static inline void cec_ops_report_aud=
io_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1440:static inline void cec_msg_give_audio=
_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1448:static inline void cec_msg_set_system=
_audio_mode(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1456:static inline void cec_ops_set_system=
_audio_mode(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1462:static inline void cec_msg_system_aud=
io_mode_request(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1474:static inline void cec_ops_system_aud=
io_mode_request(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1483:static inline void cec_msg_system_aud=
io_mode_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1491:static inline void cec_ops_system_aud=
io_mode_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1497:static inline void cec_msg_give_syste=
m_audio_mode_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:14:static inline void cec_msg_active_sourc=
e(struct cec_msg *msg, __u16 phys_addr)
> include/uapi/linux/cec-funcs.h:1505:static inline void cec_msg_report_sho=
rt_audio_descriptor(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1522:static inline void cec_ops_report_sho=
rt_audio_descriptor(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1537:static inline void cec_msg_request_sh=
ort_audio_descriptor(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1555:static inline void cec_ops_request_sh=
ort_audio_descriptor(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1573:static inline void cec_msg_set_audio_=
rate(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1581:static inline void cec_ops_set_audio_=
rate(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1589:static inline void cec_msg_report_arc=
_initiated(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1595:static inline void cec_msg_initiate_a=
rc(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1603:static inline void cec_msg_request_ar=
c_initiation(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1611:static inline void cec_msg_report_arc=
_terminated(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1617:static inline void cec_msg_terminate_=
arc(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1625:static inline void cec_msg_request_ar=
c_termination(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1636:static inline void cec_msg_report_cur=
rent_latency(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1654:static inline void cec_ops_report_cur=
rent_latency(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1671:static inline void cec_msg_request_cu=
rrent_latency(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1683:static inline void cec_ops_request_cu=
rrent_latency(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1691:static inline void cec_msg_cdc_hec_in=
quire_state(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1706:static inline void cec_ops_cdc_hec_in=
quire_state(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1716:static inline void cec_msg_cdc_hec_re=
port_state(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1742:static inline void cec_ops_cdc_hec_re=
port_state(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1762:static inline void cec_msg_cdc_hec_se=
t_state(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1794:static inline void cec_ops_cdc_hec_se=
t_state(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1816:static inline void cec_msg_cdc_hec_se=
t_state_adjacent(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1830:static inline void cec_ops_cdc_hec_se=
t_state_adjacent(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1840:static inline void cec_msg_cdc_hec_re=
quest_deactivation(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1858:static inline void cec_ops_cdc_hec_re=
quest_deactivation(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1870:static inline void cec_msg_cdc_hec_no=
tify_alive(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1879:static inline void cec_ops_cdc_hec_no=
tify_alive(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1885:static inline void cec_msg_cdc_hec_di=
scover(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:1894:static inline void cec_ops_cdc_hec_di=
scover(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1900:static inline void cec_msg_cdc_hpd_se=
t_state(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1912:static inline void cec_ops_cdc_hpd_se=
t_state(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1922:static inline void cec_msg_cdc_hpd_re=
port_state(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:1934:static inline void cec_ops_cdc_hpd_re=
port_state(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:23:static inline void cec_ops_active_sourc=
e(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:292:static inline void cec_msg_record_on(s=
truct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:29:static inline void cec_msg_image_view_o=
n(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:320:static inline void cec_ops_record_on(c=
onst struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:346:static inline void cec_msg_record_stat=
us(struct cec_msg *msg, __u8 rec_status)
> include/uapi/linux/cec-funcs.h:353:static inline void cec_ops_record_stat=
us(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:359:static inline void cec_msg_record_tv_s=
creen(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:35:static inline void cec_msg_text_view_on=
(struct cec_msg *msg)
> include/uapi/linux/cec-funcs.h:369:static inline void cec_msg_timer_statu=
s(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:392:static inline void cec_ops_timer_statu=
s(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:419:static inline void cec_msg_timer_clear=
ed_status(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:427:static inline void cec_ops_timer_clear=
ed_status(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:433:static inline void cec_msg_clear_analo=
gue_timer(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:43:static inline void cec_msg_inactive_sou=
rce(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:463:static inline void cec_ops_clear_analo=
gue_timer(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:488:static inline void cec_msg_clear_digit=
al_timer(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:513:static inline void cec_ops_clear_digit=
al_timer(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:52:static inline void cec_ops_inactive_sou=
rce(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:534:static inline void cec_msg_clear_ext_t=
imer(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:564:static inline void cec_ops_clear_ext_t=
imer(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:589:static inline void cec_msg_set_analogu=
e_timer(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:58:static inline void cec_msg_request_acti=
ve_source(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:619:static inline void cec_ops_set_analogu=
e_timer(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:644:static inline void cec_msg_set_digital=
_timer(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:669:static inline void cec_ops_set_digital=
_timer(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:67:static inline void cec_msg_routing_info=
rmation(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:690:static inline void cec_msg_set_ext_tim=
er(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:720:static inline void cec_ops_set_ext_tim=
er(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:745:static inline void cec_msg_set_timer_p=
rogram_title(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:757:static inline void cec_ops_set_timer_p=
rogram_title(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:776:static inline void cec_ops_cec_version=
(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:77:static inline void cec_ops_routing_info=
rmation(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:782:static inline void cec_msg_get_cec_ver=
sion(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:801:static inline void cec_ops_report_phys=
ical_addr(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:808:static inline void cec_msg_give_physic=
al_addr(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:816:static inline void cec_msg_set_menu_la=
nguage(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:825:static inline void cec_ops_set_menu_la=
nguage(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:832:static inline void cec_msg_get_menu_la=
nguage(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:83:static inline void cec_msg_routing_chan=
ge(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:848:static inline void cec_msg_report_feat=
ures(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:861:static inline void cec_ops_report_feat=
ures(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:882:static inline void cec_msg_give_featur=
es(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:891:static inline void cec_msg_deck_contro=
l(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:899:static inline void cec_ops_deck_contro=
l(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:905:static inline void cec_msg_deck_status=
(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:913:static inline void cec_ops_deck_status=
(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:919:static inline void cec_msg_give_deck_s=
tatus(struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:930:static inline void cec_ops_give_deck_s=
tatus(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:936:static inline void cec_msg_play(struct=
 cec_msg *msg,
> include/uapi/linux/cec-funcs.h:944:static inline void cec_ops_play(const =
struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:98:static inline void cec_ops_routing_chan=
ge(const struct cec_msg *msg,
> include/uapi/linux/cec-funcs.h:992:static inline void cec_msg_tuner_devic=
e_status(struct cec_msg *msg,
> include/uapi/linux/cec.h:1137:static inline int cec_is_2nd_tv(const struc=
t cec_log_addrs *las)
> include/uapi/linux/cec.h:1148:static inline int cec_is_processor(const st=
ruct cec_log_addrs *las)
> include/uapi/linux/cec.h:1159:static inline int cec_is_switch(const struc=
t cec_log_addrs *las)
> include/uapi/linux/cec.h:164:static inline int cec_msg_status_is_ok(const=
 struct cec_msg *msg)
> include/uapi/linux/cec.h:234:static inline int cec_has_tv(__u16 log_addr_=
mask)
> include/uapi/linux/cec.h:239:static inline int cec_has_record(__u16 log_a=
ddr_mask)
> include/uapi/linux/cec.h:244:static inline int cec_has_tuner(__u16 log_ad=
dr_mask)
> include/uapi/linux/cec.h:249:static inline int cec_has_playback(__u16 log=
_addr_mask)
> include/uapi/linux/cec.h:254:static inline int cec_has_audiosystem(__u16 =
log_addr_mask)
> include/uapi/linux/cec.h:259:static inline int cec_has_backup(__u16 log_a=
ddr_mask)
> include/uapi/linux/cec.h:264:static inline int cec_has_specific(__u16 log=
_addr_mask)
> include/uapi/linux/cec.h:269:static inline int cec_is_unregistered(__u16 =
log_addr_mask)
> include/uapi/linux/cec.h:274:static inline int cec_is_unconfigured(__u16 =
log_addr_mask)
> include/uapi/linux/fsmap.h:73:fsmap_sizeof(
> include/uapi/linux/fsmap.h:81:fsmap_advance(
> include/uapi/linux/phonet.h:138:static inline void pn_sockaddr_set_addr(s=
truct sockaddr_pn *spn, __u8 addr)
> include/uapi/linux/phonet.h:169:static inline __u16 pn_sockaddr_get_port(=
const struct sockaddr_pn *spn)
> include/uapi/linux/tipc.h:289:static inline __u32 tipc_addr(unsigned int =
zone,
> include/uapi/linux/usb/audio.h:285:static inline __u8 uac_mixer_unit_iCha=
nnelNames(struct uac_mixer_unit_descriptor *desc,
> include/uapi/linux/usb/audio.h:382:static inline __u8 uac_processing_unit=
_iChannelNames(struct uac_processing_unit_descriptor *desc,
> include/uapi/mtd/mtd-abi.h:280:static inline int mtd_type_is_nand_user(co=
nst struct mtd_info_user *mtd)
> include/video/mmp_disp.h:244:static inline void mmp_path_set_onoff(struct=
 mmp_path *path, int status)
> include/video/vga.h:435:static inline unsigned char vga_io_rattr (unsigne=
d char reg)
> include/video/vga.h:447:static inline unsigned char vga_mm_rattr (void __=
iomem *regbase, unsigned char reg)
> kernel/irq/settings.h:101:static inline void irq_settings_clr_norequest(s=
truct irq_desc *desc)
> kernel/irq/settings.h:116:static inline void irq_settings_clr_nothread(st=
ruct irq_desc *desc)
> kernel/irq/settings.h:131:static inline void irq_settings_clr_noprobe(str=
uct irq_desc *desc)
> kernel/locking/mcs_spinlock.h:65:void mcs_spin_lock(struct mcs_spinlock *=
*lock, struct mcs_spinlock *node)
> kernel/sched/sched.h:1070:static inline u64 __rq_clock_broken(struct rq *=
rq)
> lib/zlib_dfltcc/dfltcc_util.h:81:static inline void turn_bit_off(
> net/batman-adv/distributed-arp-table.h:166:static inline void batadv_arp_=
change_timeout(struct net_device *soft_iface,
> net/dccp/dccp.h:111:static inline void dccp_set_seqno(u64 *seqno, u64 val=
ue)
> net/dccp/dccp.h:144:static inline u64 max48(const u64 seq1, const u64 seq=
2)
> net/hsr/hsr_main.h:106:static inline u16 get_hsr_stag_path(struct hsr_sup=
_tag *hst)
> net/hsr/hsr_main.h:111:static inline u16 get_hsr_stag_HSR_ver(struct hsr_=
sup_tag *hst)
> net/ipv6/ila/ila.h:71:static inline bool ila_addr_is_ila(struct ila_addr =
*iaddr)
> net/mac802154/driver-ops.h:207:drv_set_pan_coord(struct ieee802154_local =
*local, bool is_coord)
> net/smc/smc_cdc.h:101:static inline u64 smc_curs_read(union smc_host_curs=
or *curs,
> net/tipc/msg.h:208:static inline void msg_swap_words(struct tipc_msg *msg=
, u32 a, u32 b)
> net/tipc/msg.h:417:static inline void msg_reset_reroute_cnt(struct tipc_m=
sg *m)
> net/tipc/msg.h:724:static inline u32 msg_bcgap_after(struct tipc_msg *m)
> net/tipc/msg.h:792:static inline void msg_set_long_msgno(struct tipc_msg =
*m, u32 n)
> scripts/gcc-plugins/gcc-common.h:168:static inline tree build_const_char_=
string(int len, const char *str)
> scripts/gcc-plugins/gcc-common.h:220:static inline bool is_simple_builtin=
(tree decl)
> scripts/gcc-plugins/gcc-common.h:252:static inline void add_local_decl(st=
ruct function *fun, tree d)
> scripts/gcc-plugins/gcc-common.h:274:static inline bool gimple_clobber_p(=
gimple s __unused)
> scripts/gcc-plugins/gcc-common.h:279:static inline bool gimple_asm_clobbe=
rs_memory_p(const_gimple stmt)
> scripts/gcc-plugins/gcc-common.h:298:static inline int ipa_reverse_postor=
der(struct cgraph_node **order)
> scripts/gcc-plugins/gcc-common.h:380:static inline bool gimple_store_p(gi=
mple gs)
> scripts/gcc-plugins/gcc-common.h:387:static inline void gimple_init_singl=
eton(gimple g __unused)
> scripts/gcc-plugins/gcc-common.h:434:static inline HOST_WIDE_INT tree_to_=
shwi(const_tree t)
> scripts/gcc-plugins/gcc-common.h:577:static inline void set_decl_section_=
name(tree node, const char *value)
> scripts/gcc-plugins/gcc-common.h:760:static inline unsigned int rebuild_c=
graph_edges(void)
> scripts/gcc-plugins/gcc-common.h:765:static inline cgraph_node_ptr cgraph=
_function_node(cgraph_node_ptr node, enum availability *availability)
> scripts/gcc-plugins/gcc-common.h:770:static inline cgraph_node_ptr cgraph=
_function_or_thunk_node(cgraph_node_ptr node, enum availability *availabili=
ty =3D NULL)
> scripts/gcc-plugins/gcc-common.h:775:static inline bool cgraph_only_calle=
d_directly_p(cgraph_node_ptr node)
> scripts/gcc-plugins/gcc-common.h:800:static inline void cgraph_remove_fun=
ction_insertion_hook(struct cgraph_node_hook_list *entry)
> scripts/gcc-plugins/gcc-common.h:810:static inline void cgraph_remove_nod=
e_removal_hook(struct cgraph_node_hook_list *entry)
> scripts/gcc-plugins/gcc-common.h:820:static inline void cgraph_remove_nod=
e_duplication_hook(struct cgraph_2node_hook_list *entry)
> scripts/gcc-plugins/gcc-common.h:825:static inline void cgraph_call_node_=
duplication_hooks(cgraph_node_ptr node, cgraph_node_ptr node2)
> scripts/gcc-plugins/gcc-common.h:830:static inline void cgraph_call_edge_=
duplication_hooks(cgraph_edge *cs1, cgraph_edge *cs2)
> scripts/gcc-plugins/gcc-common.h:930:static inline cgraph_node_ptr ipa_re=
f_referring_node(struct ipa_ref *ref)
> scripts/kconfig/expr.h:323:static inline int expr_is_no(struct expr *e)
> security/selinux/include/netlabel.h:101:static inline int selinux_netlbl_=
conn_setsid(struct sock *sk,
> security/smack/smack.h:508:static inline void smk_ad_setfield_u_fs_path_m=
nt(struct smk_audit_info *a,
> sound/core/seq/oss/seq_oss_timer.h:52:snd_seq_oss_timer_is_realtime(struc=
t seq_oss_timer *timer)
> sound/firewire/dice/dice.h:180:static inline int snd_dice_transaction_wri=
te_sync(struct snd_dice *dice,
> sound/firewire/dice/dice.h:187:static inline int snd_dice_transaction_rea=
d_sync(struct snd_dice *dice,
> sound/pci/echoaudio/echoaudio.h:520:static inline int num_pipes_in(const =
struct echoaudio *chip)
> sound/pci/hda/hda_auto_parser.h:104:static inline int auto_cfg_speaker_ou=
ts(const struct auto_pin_cfg *cfg)
> sound/pci/ice1712/ice1712.h:400:static inline unsigned int snd_ice1712_gp=
io_get_dir(struct snd_ice1712 *ice)
> sound/soc/codecs/arizona.h:329:static inline int arizona_register_notifie=
r(struct snd_soc_component *component,
> sound/soc/codecs/arizona.h:343:static inline int arizona_unregister_notif=
ier(struct snd_soc_component *component,
> sound/soc/codecs/madera.h:439:static inline int madera_register_notifier(=
struct snd_soc_component *component,
> sound/soc/codecs/madera.h:449:madera_unregister_notifier(struct snd_soc_c=
omponent *component,
> sound/soc/intel/common/soc-intel-quirks.h:104:static inline bool soc_inte=
l_is_apl(void)
> sound/soc/intel/common/sst-dsp-priv.h:319:static inline void sst_dsp_writ=
e(struct sst_dsp *sst, void *src,
> sound/soc/sof/ops.h:189:static inline int snd_sof_dsp_set_clk(struct snd_=
sof_dev *sdev, u32 freq)
> sound/soc/sof/ops.h:387:snd_sof_pcm_platform_pointer(struct snd_sof_dev *=
sdev,
> sound/soc/sof/ops.h:51:static inline int snd_sof_dsp_stall(struct snd_sof=
_dev *sdev)
> tools/firewire/list.h:35:list_prepend(struct list *list, struct list *new=
_link)
> tools/include/linux/rcu.h:12:static inline int rcu_is_cpu_idle(void)
> tools/include/linux/stacktrace.h:13:static inline void print_stack_trace(=
struct stack_trace *trace, int spaces)
> tools/io_uring/liburing.h:126:static inline void io_uring_prep_read_fixed=
(struct io_uring_sqe *sqe, int fd,
> tools/io_uring/liburing.h:140:static inline void io_uring_prep_write_fixe=
d(struct io_uring_sqe *sqe, int fd,
> tools/io_uring/liburing.h:147:static inline void io_uring_prep_poll_add(s=
truct io_uring_sqe *sqe, int fd,
> tools/io_uring/liburing.h:156:static inline void io_uring_prep_poll_remov=
e(struct io_uring_sqe *sqe,
> tools/io_uring/liburing.h:164:static inline void io_uring_prep_fsync(stru=
ct io_uring_sqe *sqe, int fd,
> tools/io_uring/liburing.h:173:static inline void io_uring_prep_nop(struct=
 io_uring_sqe *sqe)
> tools/lib/bpf/btf.h:171:static inline bool btf_is_int(const struct btf_ty=
pe *t)
> tools/lib/bpf/btf.h:191:static inline bool btf_is_union(const struct btf_=
type *t)
> tools/lib/bpf/btf.h:218:static inline bool btf_is_volatile(const struct b=
tf_type *t)
> tools/lib/bpf/btf.h:223:static inline bool btf_is_const(const struct btf_=
type *t)
> tools/lib/bpf/btf.h:228:static inline bool btf_is_restrict(const struct b=
tf_type *t)
> tools/lib/bpf/btf.h:272:static inline __u8 btf_int_bits(const struct btf_=
type *t)
> tools/lib/traceevent/event-utils.h:53:static inline int has_text(const ch=
ar *text)
> tools/perf/util/cpumap.h:31:static inline int cpu_map__socket(struct perf=
_cpu_map *sock, int s)
> tools/testing/selftests/kselftest.h:179:static inline int ksft_exit_xfail=
(void)
> tools/testing/selftests/kselftest.h:185:static inline int ksft_exit_xpass=
(void)
> tools/testing/selftests/kselftest.h:49:static inline void ksft_inc_xpass_=
cnt(void) { ksft_cnt.ksft_xpass++; }
> tools/testing/selftests/kselftest.h:50:static inline void ksft_inc_xskip_=
cnt(void) { ksft_cnt.ksft_xskip++; }
> tools/testing/selftests/kselftest.h:51:static inline void ksft_inc_error_=
cnt(void) { ksft_cnt.ksft_error++; }
> tools/testing/selftests/kselftest.h:53:static inline int ksft_get_pass_cn=
t(void) { return ksft_cnt.ksft_pass; }
> tools/testing/selftests/kselftest.h:55:static inline int ksft_get_xfail_c=
nt(void) { return ksft_cnt.ksft_xfail; }
> tools/testing/selftests/kselftest.h:56:static inline int ksft_get_xpass_c=
nt(void) { return ksft_cnt.ksft_xpass; }
> tools/testing/selftests/kselftest.h:57:static inline int ksft_get_xskip_c=
nt(void) { return ksft_cnt.ksft_xskip; }
> tools/testing/selftests/kvm/include/x86_64/processor.h:242:static inline =
void set_xmm(int n, unsigned long val)
> tools/testing/selftests/kvm/include/x86_64/processor.h:273:static inline =
unsigned long get_xmm(int n)
> tools/testing/selftests/powerpc/include/subunit.h:14:static inline void t=
est_failure_detail(char *name, char *detail)
> tools/testing/selftests/powerpc/tm/tm.h:77:static inline bool tcheck_doom=
ed(void)
> tools/testing/selftests/powerpc/tm/tm.h:87:static inline bool tcheck_susp=
ended(void)
> tools/testing/selftests/x86/pkey-helpers.h:109:static inline void __pkey_=
access_allow(int pkey, int do_allow)
> tools/testing/selftests/x86/pkey-helpers.h:123:static inline void __pkey_=
write_allow(int pkey, int do_allow_write)
>=20


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/fa2d0afb72bc4d754dfcd57ebbddb7c59783887c.camel%40perches.=
com.
