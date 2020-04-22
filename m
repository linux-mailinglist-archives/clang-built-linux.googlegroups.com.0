Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6XSQL2QKGQEFK7GS3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5D41B4F73
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 23:39:07 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id v2sf4018051qvy.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 14:39:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587591546; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+H9n7mtyYaasxZKAeiAMx86yjiF8uBWhBEvw41KVrCJ9HJrlWAfcT/hsDVXWM8Ipl
         cds2Y09XsnLh369EiYtmpriDd/9howNSawG9ShoZey1SXjEI7Q+QMsK1FMfDOKi7LFxu
         tR7qzmISLWtUVofGv7N36eqaBtlWJ0fKCodRIYE/hxH8V1AeQGqDAz5dp416RCHSro4z
         aVu7HiyaLorBrxtHjjJ41rLP9sYy2Y4v/aAkQFNQ/Ox5UuqyPE1zuFN8nw4ZbTclZa84
         xvORKEwvBxqmBnleS0X+RNmdmtOiTDeWSbYm8Sifi4uOY/Caa0OAN4OScwDMa9A12vlC
         9Dmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=TluluUiP8WQ1fH4Z4Cm/RttkeMUOzacGKKYv1U9SEZA=;
        b=RL4QT/72NISstPvOZxv9d2EmN1pqzd6FiQ8eva56MRc4puzI1VC9yri2K8iqxrbJ0P
         ZCV/Nap4a7CQpggAJMocaiPzNzGe6rLo8i/zMqQsyJzs3hVZu+YGolZF/SdrrUQmyXlX
         QCGd435xKUcpoBQKWLqosHIHQ25GclP3P/5zczZyVucUC+FuS2K070cmjdIy9/OOTpjP
         Oo4eORx6lFsnyxxfomVH+ckQiA5wEW7LH/FeBsAzc8KzLg/70V5EIFYwEvoJ3zK0PnHI
         99jD3ct5x651EpnIF+cNOZMCfRFFUguyUiAZekL5y76eHP05oW5C8D8HMwOj54qk0lsK
         nycg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZHiw+lV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TluluUiP8WQ1fH4Z4Cm/RttkeMUOzacGKKYv1U9SEZA=;
        b=GU0yjQAif4Lvyl/qxsCqZaWcIwQN3VQ9llKuNyyqk+Yzy98mjAQ3609wbzpyYG2LU7
         XEuyY6xH10yAjKEutIOhT34ADtt8dwtRQazGqVnKVTWluN3RCipMFD7Nq4+L1hTyMZfg
         4ZUN+pOk762YITHUJkTeMRLvqJ2vCSkfyOyS3TY/2MR/ihwK/aX2Rw5o0PQnPSnNTZoP
         q+xBXVQK2r6dkmiCvV09vcgw4Irg7v2HxycTnrUiM9quWEiGwvfWzhP2Edl+i8JLAiew
         RJIye+6c4SOUX44ZkMxKosqHUJgVEvCFHT3hzblv23n29H1JpeGTv3BsxmyVznG0//jt
         MC4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TluluUiP8WQ1fH4Z4Cm/RttkeMUOzacGKKYv1U9SEZA=;
        b=OxWfrIDp35eA9HwgoGHbRZqSrZbSSy0IMCXgsoaEHh8d2waNB6ftqXMtG5GIwzRnQD
         TXn12FBwX6xVuMUwTe+5mwqjQXIHxZC0a+icrTCL/mS7jpIM8uZrXq8xs+kjtOiXSD91
         Of8E+TS/dIY5y7UeQM2UcDLthEgxnYt3INfhmbYdgEYV9PMvB4KEq8ax800NHMX+eM6z
         bXHGZoLH7/bIlKbBPX3UD0wcsekfui89OIjwBqU/a7PulTXR0eml7JmhSdDw+YMkQX+X
         wl4QhdPKHOPl83XvB9joq4m+UW86eZ9DydK6oXJSinkXBYORqGucUK4x0gSaX5SAlHI3
         xYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TluluUiP8WQ1fH4Z4Cm/RttkeMUOzacGKKYv1U9SEZA=;
        b=Bxliw/XZTnpo7NUVf/n55RDEccFW7E9F6vxPEy62QPWpTDUbN1xcGSKl/J5U3m1iyf
         8hZFTxw7w1J+bPQvvyiVhNux2tO8VXq9t0KXvREDQ5aJGTC8W/PbK5DpTL6kK7aLUcy7
         FRlla/5JxL5uWW3wqLHxLvl1bcqZN4u1bniHvtdgPz04vW8T88vScRMO0LkPR+hplE97
         V2+b9zyRO7kA0+baL86DteIvdy9ki/ohCur571bBAfBXZpc7y6iwMbEHrp6hEcXH66Tj
         RAPOcoef1JypH8aMolwyc4ihToPSeNosC6H1uNG3de1BVX/qititzGWSEmVfPzXWUTdO
         Jmsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub6JdUG/mC2i3DKiqedc+ntrvcgpiPmH0fGSEPHvmTN5lvkhKhK
	uiiXILAsV1KRnovPxHjRrtU=
X-Google-Smtp-Source: APiQypKXcjq4KbND29yg0w3XdcURpQZUME9vKlMrZ3Mg//90Xrc7ViRh34c5KIFyza7k+9f9Se6KPw==
X-Received: by 2002:ac8:1b3d:: with SMTP id y58mr799445qtj.13.1587591546358;
        Wed, 22 Apr 2020 14:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c97:: with SMTP id 145ls2463179qkm.4.gmail; Wed, 22 Apr
 2020 14:39:06 -0700 (PDT)
X-Received: by 2002:a05:620a:1367:: with SMTP id d7mr417891qkl.190.1587591545980;
        Wed, 22 Apr 2020 14:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587591545; cv=none;
        d=google.com; s=arc-20160816;
        b=l3kwOqQRxxVREaNXSIT3nEws2zrF9UNxCBvWQ9xsGXEssF1+9ibbR9wfh+Gi3L92m5
         PFrBNzbFc6x4GFaDfMAcaejcD9XYQga9NIKf/1zmbPjyZAVGt7LsgCAO8QCivYunZI6q
         XgmhBnWG5hfIPCDIfTrU0KwpDtdYkSMhS3q3ohmwAjodV06LjFNFSBZDNdD8TrgYv0ix
         a6H19zTmcizo4cza5H3zehi6zAfkzNMh7uuV1R55nyNs1WFa1F9gvzKGIcE50OLLp4/G
         WVixOfEbL5XJIJSvDUOgxFYOsvDb6rRVAGGBR0MA2YAAnOME57YFt8limXtds/KaxXcs
         4uIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7lX3o4c67c1fprgBzk8h5D+T2HBfIv2CqrJ4haDmaDU=;
        b=jtqthICdz2JAB0l8QljnIaqwuWMdK8pTJq2YHp3Pk4K0+NgTqCStykHMGoj8sCvtkY
         efGexm8SNlm/0SvzDLH6YhtkZ3RLrFvKlaHsyGTJ3JcqLcdxFrxpzjWkmhVdRTc3QmEk
         /x/p0cki5tljpnVD2I9WQgIeHz5lXZhrtnoDJUuqk5Yruf+4YQN8CXeCYUrJ5PfCB8s2
         73cY/zfHAG09L4tXlP+WlQ1JmHTG8RkpBcDojWw1VLMzm098BQELnQig7tMU+oKjrtbC
         YV+7skwo/u8Ck0Ogcs53kHMsigkHGcJFD6MYkp8UJX+IXxRUeJIteQqL8ktIhY1/aSqS
         kmAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZHiw+lV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j11si36712qkl.6.2020.04.22.14.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 14:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e20so3536150otk.12
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 14:39:05 -0700 (PDT)
X-Received: by 2002:a05:6830:2402:: with SMTP id j2mr1020660ots.180.1587591545294;
        Wed, 22 Apr 2020 14:39:05 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w82sm126665oig.45.2020.04.22.14.39.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 22 Apr 2020 14:39:04 -0700 (PDT)
Date: Wed, 22 Apr 2020 14:39:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ndesaulniers@google.com
Cc: android-llvm@google.com, clang-linux-fellowship@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: Clang-Built Linux Meeting Notes - April 22, 2020
Message-ID: <20200422213903.GA34506@ubuntu-s3-xlarge-x86>
References: <0000000000003b3e9705a3e74e22@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0000000000003b3e9705a3e74e22@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nZHiw+lV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Sorry that mutt is going to butcher this :/

On Wed, Apr 22, 2020 at 08:52:08PM +0000, ndesaulniers via Clang Built Linu=
x wrote:
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>=20
>=20
> April 22, 2020
> --------------
>=20
> Move meeting up one hour? Sounds like this might benefit at least one
> attendee.

+1 from me

> Armv5 boot issue default page alignment
> https://bugs.llvm.org/show_bug.cgi?id=3D45632
>=20
> X86 stack protector
> https://lore.kernel.org/lkml/20200422192113.GG26846@zn.tnic/T/#t
>=20
> Asm goto w/ outputs
> https://reviews.llvm.org/D78341
> https://reviews.llvm.org/D77849
> https://reviews.llvm.org/D78166
> https://reviews.llvm.org/D78234
> https://reviews.llvm.org/D78520
>=20
> Kernel size regression debug info
> Clang-10 ppc and riscv regressions
> One outstanding pull Hal has approved for Tom to merge.

I do not think there was a RISCV regression in clang-10. There was in
clang-11 but that has been fixed (https://llvm.org/pr45580).

https://github.com/tstellar/llvm-project/pull/97

After that, I believe that we are in a pretty good shape for LLVM 10.
Results with that pull request merged into release/10.x and 5.6.5:

arm32 multi_v5_defconfig (minus CONFIG_TRACING, CONFIG_OPROFILE, and CONFIG=
_RCU_TRACE) exit code: 0
arm32 multi_v5_defconfig (minus CONFIG_TRACING, CONFIG_OPROFILE, and CONFIG=
_RCU_TRACE) qemu boot exit code: 0
arm32 aspeed_g5_defconfig exit code: 0
arm32 aspeed_g5_defconfig qemu boot exit code: 0
arm32 multi_v7_defconfig exit code: 0
arm32 multi_v7_defconfig qemu boot exit code: 0
arm32 allmodconfig exit code: 0
arm32 allyesconfig exit code: 0
arm32 debian config exit code: 0
armv7hl fedora config exit code: 0
armv7hl opensuse config exit code: 0
arm64 defconfig exit code: 0
arm64 defconfig qemu boot exit code: 0
arm64 allmodconfig exit code: 0
arm64 allyesconfig exit code: 0
arm64 debian config exit code: 0
arm64 fedora config exit code: 0
arm64 opensuse config exit code: 0
mips malta_kvm_guest_defconfig exit code: 0
mips malta_kvm_guest_defconfig qemu boot exit code: 0
mips malta_kvm_guest_defconfig plus CONFIG_CPU_BIG_ENDIAN=3Dy exit code: 0
mips malta_kvm_guest_defconfig plus CONFIG_CPU_BIG_ENDIAN=3Dy qemu boot exi=
t code: 0
powerpc ppc44x_defconfig exit code: 0
powerpc ppc44x_defconfig qemu boot exit code: 0
powerpc pseries_defconfig exit code: 0
powerpc pseries_defconfig qemu boot exit code: 0
powerpc powernv_defconfig exit code: 0
powerpc powernv_defconfig qemu boot exit code: 0
powerpc ppc64le_defconfig exit code: 0
ppc64le debian config exit code: 0
ppc64le fedora config exit code: 0
ppc64le opensuse config exit code: 0
s390x defconfig exit code: 0
s390x debian config exit code: 0
s390x fedora config exit code: 0
s390x opensuse config exit code: 0
x86_64 defconfig exit code: 0
x86_64 qemu boot exit code: 0
x86_64 allmodconfig (minus CONFIG_STM and CONFIG_TEST_MEMCAT_P) exit code: =
0
x86_64 allyesconfig exit code: 0
x86_64 allyesconfig at -O3 (minus CONFIG_SENSORS_APPLESMC) exit code: 0
x86_64 archlinux config (minus CONFIG_STM) exit code: 0
x86_64 debian config exit code: 0
x86_64 fedora config exit code: 0
x86_64 opensuse config (minus CONFIG_STM) exit code: 0

The script:

https://github.com/nathanchance/llvm-kernel-testing/blob/6c067b9f5380af401f=
07028f0a0b09996fed90a1/qualify-llvm.sh

I've annotated all of the places where bugs have been filed for certain
workarounds and such.

> Iwmmxt missing support in LLVM, should implement those instructions.
>=20
> Memcpy fortify
> Previous regression fixed
> Clang fortify may never have worked for the kernel, Kees and George looki=
ng
>=20
> Zero init cfe-dev thread started by Kees
>=20
> I spoke with Arnd Bergmann about s390 rootfs images.  He suggested debian
> deboot strap.  I think we might also be able to cross compile a simple in=
it
> binary with zig, though I don=E2=80=99t know if s390 support has been wel=
l testing
> in zig.
>=20

Little function to reply to an email from lore.kernel.org that you were
not CC'd on (using mutt):

function reply_to_lkml() {(
    LINK=3D${1:?} && \
    MBOX=3D$(mktemp --suffix=3D.mbox) && \
    curl -LSso "${MBOX}" "${LINK%/*}"/raw && \
    mutt -f "${MBOX}"

    rm "${MBOX}"
)}

It expects either the regular lore.kernel.org address or the "raw" one
next to the "Message-ID:" section on the web interface. It ultimately
gets the "raw" address but I wanted it to handle both in case I copied
the "wrong one"

Example (these behave and work the same):

$ reply_to_lkml https://lore.kernel.org/lkml/20200421214703.47883-1-natecha=
ncellor@gmail.com/

$ reply_to_lkml https://lore.kernel.org/lkml/20200421214703.47883-1-natecha=
ncellor@gmail.com/raw

From there, just hit 'g' and reply as if you were CC'd.

I also have a small function that does the same thing but applies the
diff to a kernel tree for quick testing:

function patch_from_lkml() {(
    while (( ${#} )); do
        case ${1} in
            http*) LINK=3D${1} ;;
            am) METHOD=3D( am ) ;;
            apply) METHOD=3D( apply -v ) ;;
        esac
        shift
    done
    curl -LSs "${LINK%/*}"/raw | git "${METHOD[@]}" -3
)}

It takes a link in the same way that the previous function does and then
either 'am' or 'apply' to run 'git am' or 'git apply'.

Lastly, I have been messing around with doing a completely hermetic
build. Some immediate issues I have come across:

* MIPS, PowerPC, s390, and RISC-V VDSOs are all using '$(CC)' to link
  instead of '$(LD)' so they would error if '${CROSS_COMPILE}ld' nor
  'ld' were available in PATH. I have patches for the first three, they
  were relatively easy. The RISC-V one isn't quite as easy but I think I
  might have an idea of how to do it.

    * https://github.com/nathanchance/linux/commit/2373cbcbdeb087940bfae167=
5bb099a0fd9e98f6

    * https://github.com/nathanchance/linux/commit/8bf8a05025f5abc32fefd01b=
cc93c9b722864bd5

    * https://github.com/nathanchance/linux/commit/2515772c1207cc7b2ce565d3=
e2ebb4107b1c553a

    * https://github.com/nathanchance/linux/commit/20924182c9db0992deb3457f=
c41df1d85df20a67

  I will be sending these out for review as soon as I add a proper
  commit message and get them fully flushed out and tested.

* The PowerPC boot wrapper requires the GNU tools.

  Just search for "${CROSS}" in this file and you will see:
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/a=
rch/powerpc/boot/wrapper?h=3Dv5.7-rc2

  Getting that into a state where LLVM tools work with it will be rather
  tricky I think. It does not use the environment values of LD, NM,
  OBJCOPY, etc and it does a ton of parsing of the outputs of those
  tools.

* '$(HOSTLD)' does not work like '$(LD)' does.

  In other words, '$(HOSTCC)' is used to link so by default, we are
  using 'ld' instead of 'ld.lld', even when '$(HOSTLD)' is set.

  Couple of ideas:

    * Just set -DCLANG_DEFAULT_LINKER=3Dlld when building clang. Once the
      VDSO issue is handled above, this should not impact anything aside
      from the host tools.

    * Reword host compilation to work like main compilation; in other
      words, '$(HOSTCC)' compiles, '$(HOSTLD)' links.

    * Set '-fuse-ld=3Dlld' when 'LLVM=3D1' is set.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200422213903.GA34506%40ubuntu-s3-xlarge-x86.
