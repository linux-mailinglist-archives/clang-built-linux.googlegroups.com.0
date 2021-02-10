Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBKO3RSAQMGQENDBKDJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 316D5315B9B
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 01:49:46 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id u14sf220425qke.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 16:49:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612918185; cv=pass;
        d=google.com; s=arc-20160816;
        b=ze8eftm+sxlJCWn2m+Cld8skg+xlSjqKLbpvGOEdoYsV2TcqEKUSL/BNe7l8xnRPUk
         yMJdbtq0Mgl9VcHyRx0jH6TXdAxyGU0dyO30XOEy2HAR1C8QvoYET5uGGr3CyE1NjIif
         fjrdr6f4eItL2n3deTyHA2NlqQkSb/oriMrBn+cngo5PbMOqEEy2jzgZl60I496UPBD5
         v/LgqzDJuB+mJrL6/3SqABcRC83d1ZobILVUBbWB9XarE8VKPRPus9PlclO1gsLZEh+t
         pzULiHQRuXCMkjrj3O1Cxyr1wf86JfNAvnhZ4kXjsVEMfbmV4MIrHbzP5JmrEaKiCvN7
         FWSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=ccNbJRGl0URiur9U0HBdKY+OEMPmsy+viE8yTvi/lPY=;
        b=UW5/k03/CR+GqYuYyP1a3WRESwGhmVr2nZODgaNhsOIn7MGhrjWgZ/UeZNdHo2lO3w
         t/SF8TJM3vg/EWF8UNcA8Q483ZP1DQjj2Wvlb8VFHv14/HnVEPpAm1ob/erbFO/QyG5r
         m8ZWpi15VTafZAQABJSD6O1XryGUycJgUM7OajpkB32YkgKm/DvLeSfsu/DhR9RHQ5wu
         i99xja8nNjmOwghCL5Djpt2BW9Jfv1K1wBAijbU+H4y2cErP8zGdS/cZiwGWte+2Wo4C
         anTvvQPAnCPSANg+OuLFG4DGUSU1RiS74gBEqnH3xSOi4y3rNcXAkQgiyJxAecvNxwX6
         LLSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pxCJwYWy;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ccNbJRGl0URiur9U0HBdKY+OEMPmsy+viE8yTvi/lPY=;
        b=sm+b1ocpNjPzpBxIvdl3zgTIJjEVj3xrlnd2szz8Z92Ul9LXrq8JwZkvyJPUc4TfAt
         d87lXNrFk4yjZ8Vxq3+HW5sHJ3Q6BijXa6e933DRi3YYIynp1GAifNhwW2TJQ3V6OyMS
         WnNKoVxH9z/6RHgDp1jeswiqBwzYbvIcWfmeBA+I1zbpj9Stoi7460kY8VR9cl07yMgp
         u89NynTT6BLunSLRW7IuRrxzkohP6XqcEc5IUB+gLFX03zR/AG8bs0+nNNP291DHkmQL
         QZ6cpgUYfhBONyBAKJSfFnfZBWh5/5bMh2An92sAldOShfkQEvDmeSIK/vftR+e7CmqZ
         Ozng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ccNbJRGl0URiur9U0HBdKY+OEMPmsy+viE8yTvi/lPY=;
        b=QuVH5eT0OIbxSCib4ePLLCpgjoSOSN+e1rPSt6DOOun9VotjntMf4o7xROlPbyEaov
         8WWsu0O1QN+Hqf/EDWI5Iz9I+x7b+ncLPWj+ORI3KvWqVVSQWNKayx+mdHYPdTiHjpeW
         NDkGNCryWhELIhYEMml1b74wJE22ZcKCkDvRw0t+1f0E0vsAJ+i1kFoqk6MzEyrsqaEF
         IbsCdoBjTFHqKOH/tvQzX+bUquqBG4oQeUi+EiHz72SCbZjRWOoHrf6SdgLJS39+293p
         kyolc/eTfn2oh9WHam6UDoDAGaJtbLuuUIsvEP4MG9ONHQ1fGPs+3LLm3qJwexThX4z1
         nt9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r4BJIzjPWHhirBKkbE1pKrvEuyrP/uDohFHla7rC/MJI6RCBD
	FtOcY/Sc/dyKu1dDoSQPdDw=
X-Google-Smtp-Source: ABdhPJy9AVWehkNeSvF9dzIgi2HgcPzfK+dl5xF1ownEMewumw51iZWEhPHKo8aFJJL0JslIwQLWCQ==
X-Received: by 2002:aed:304c:: with SMTP id 70mr669218qte.23.1612918185229;
        Tue, 09 Feb 2021 16:49:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9c2:: with SMTP id 185ls191209qkj.8.gmail; Tue, 09 Feb
 2021 16:49:44 -0800 (PST)
X-Received: by 2002:a37:9003:: with SMTP id s3mr970671qkd.117.1612918184900;
        Tue, 09 Feb 2021 16:49:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612918184; cv=none;
        d=google.com; s=arc-20160816;
        b=mvf1nVwjgY+i1Y/NxmTyaPc01EOxj0jf1y9bmWwrHyQWJfoxBQIxoM51Tdtq+AYkZT
         Qc6VTUMbV4Ff30jXoghx8dNbTi+opcgNs3CQ68TeRJmoJPIUnXGgv0HFfTfx0yOAJHxf
         F4nu7pPixgqqw8AvQiqx9KIm/i9Xt6NQcbAN6YNrci6OJN17iy53mxCaylV94lExXIA5
         HezOce/0NoOPSi4Ow3CVOXlV8V2XByFCHrqMIVGWU07NdVOUU0MVa+WmD079O2akvSC+
         qe3R+G01fsWwkb4+TVMAslKSLRiNtz7FOOjHl+KFVDIK7a2AY6YX86c50gedC48DWJD1
         Ovzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XXHMXOJp030QoRoAhOuzy3efbKPMRRIkEi4vd4OiaLI=;
        b=N8GYfoMHc6j3t3WpBNBj/I84uQ1vybRoLplMSdEGsZdhUegxafSis76+Ex2YuXcdc5
         XduUVZzwQwHREsJQrDeV0R9KAHCzsAaDb+YWgl/xcY4U16t+d7XdYq7wySk0fC+cX9HZ
         Xd6yIbFrzDGYewcerEUF58xr/l+lhnLFTldLUk4zseUZ0nAObxas4kaLLJjT4cscPJeu
         XtvdN33GsGl8DEvZd9hrbW3AY0nSH7UrbZNykg0BMJACuk6Rhd85qWHlTUDcwS8JMtr7
         StfPLMMb0XNIS85GFDcKOYBgWn4pUQOqkoX4tljw+Fe1cVctjWwDVN6odHgCe3p8Fsur
         Wlvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pxCJwYWy;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q24si23955qtp.5.2021.02.09.16.49.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 16:49:44 -0800 (PST)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A987B64E4B;
	Wed, 10 Feb 2021 00:49:40 +0000 (UTC)
Date: Wed, 10 Feb 2021 09:49:38 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jianlin Lv <Jianlin.Lv@arm.com>
Cc: "peterz@infradead.org" <peterz@infradead.org>, "mingo@redhat.com"
 <mingo@redhat.com>, "acme@kernel.org" <acme@kernel.org>, Mark Rutland
 <Mark.Rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com"
 <jolsa@redhat.com>, "namhyung@kernel.org" <namhyung@kernel.org>,
 "natechancellor@gmail.com" <natechancellor@gmail.com>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>, "fche@redhat.com"
 <fche@redhat.com>, "irogers@google.com" <irogers@google.com>,
 "sumanthk@linux.ibm.com" <sumanthk@linux.ibm.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
Message-Id: <20210210094938.2f7b81dcf40b9dfc5fb3e61f@kernel.org>
In-Reply-To: <AM6PR08MB3589E9CB66C12943CC93D559988E9@AM6PR08MB3589.eurprd08.prod.outlook.com>
References: <20210205093558.3057814-1-Jianlin.Lv@arm.com>
	<20210208213245.c302a2263a0816d705af974c@kernel.org>
	<AM6PR08MB3589E9CB66C12943CC93D559988E9@AM6PR08MB3589.eurprd08.prod.outlook.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pxCJwYWy;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
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

On Tue, 9 Feb 2021 02:51:31 +0000
Jianlin Lv <Jianlin.Lv@arm.com> wrote:

>=20
>=20
> > -----Original Message-----
> > From: Masami Hiramatsu <mhiramat@kernel.org>
> > Sent: Monday, February 8, 2021 8:33 PM
> > To: Jianlin Lv <Jianlin.Lv@arm.com>
> > Cc: peterz@infradead.org; mingo@redhat.com; acme@kernel.org; Mark
> > Rutland <Mark.Rutland@arm.com>; alexander.shishkin@linux.intel.com;
> > jolsa@redhat.com; namhyung@kernel.org; natechancellor@gmail.com;
> > ndesaulniers@google.com; fche@redhat.com; irogers@google.com;
> > sumanthk@linux.ibm.com; adrian.hunter@intel.com; linux-
> > kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> > Subject: Re: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
> >
> > Hi Jianlin,
> >
> > On Fri,  5 Feb 2021 17:35:58 +0800
> > Jianlin Lv <Jianlin.Lv@arm.com> wrote:
> >
> > > Perf failed to add kretprobe event with debuginfo of vmlinux which is
> > > compiled by gcc with -fpatchable-function-entry option enabled.
> > > The same issue with kernel module.
> > >
> > > Issue:
> > >
> > >   # perf probe  -v 'kernel_clone%return $retval'
> > >   ......
> > >   Writing event: r:probe/kernel_clone__return _text+599624 $retval
> > >   Failed to write event: Invalid argument
> > >     Error: Failed to add events. Reason: Invalid argument (Code: -22)
> > >
> > >   # cat /sys/kernel/debug/tracing/error_log
> > >   [156.75] trace_kprobe: error: Retprobe address must be an function =
entry
> > >   Command: r:probe/kernel_clone__return _text+599624 $retval
> > >                                         ^
> > >
> > >   # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
> > >   0x00df2c2b:   DW_TAG_subprogram
> > >                 DW_AT_external  (true)
> > >                 DW_AT_name      ("kernel_clone")
> > >                 DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c=
")
> > >                 DW_AT_decl_line (2423)
> > >                 DW_AT_decl_column       (0x07)
> > >                 DW_AT_prototyped        (true)
> > >                 DW_AT_type      (0x00dcd492 "pid_t")
> > >                 DW_AT_low_pc    (0xffff800010092648)
> > >                 DW_AT_high_pc   (0xffff800010092b9c)
> > >                 DW_AT_frame_base        (DW_OP_call_frame_cfa)
> > >
> > >   # cat /proc/kallsyms |grep kernel_clone
> > >   ffff800010092640 T kernel_clone
> > >   # readelf -s vmlinux |grep -i kernel_clone
> > >   183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_c=
lone
> > >
> > >   # objdump -d vmlinux |grep -A 10  -w \<kernel_clone\>:
> > >   ffff800010092640 <kernel_clone>:
> > >   ffff800010092640:       d503201f        nop
> > >   ffff800010092644:       d503201f        nop
> > >   ffff800010092648:       d503233f        paciasp
> > >   ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-12=
8]!
> > >   ffff800010092650:       910003fd        mov     x29, sp
> > >   ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]
> > >
> > > The entry address of kernel_clone converted by debuginfo is
> > > _text+599624 (0x92648), which is consistent with the value of
> > DW_AT_low_pc attribute.
> > > But the symbolic address of kernel_clone from /proc/kallsyms is
> > > ffff800010092640.
> >
> > Oh, I had faced similar bug for fentry.
> > 3d918a12a1b3 ("perf probe: Find fentry mcount fuzzed parameter location=
")
> > GCC dwarf generator tends to skip this kind of function entry informati=
on...
> >
> > >
> > > This issue is found on arm64, -fpatchable-function-entry=3D2 is enabl=
ed
> > > when CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy;
> > > Just as objdump displayed the assembler contents of kernel_clone, GCC
> > > generate 2 NOPs  at the beginning of each function.
> > >
> > > kprobe_on_func_entry detects that (_text+599624) is not the entry
> > > address of the function, which leads to the failure of adding kretpro=
be
> > event.
> > >
> > > ---
> > > kprobe_on_func_entry
> > > ->_kprobe_addr
> > > ->kallsyms_lookup_size_offset
> > > ->arch_kprobe_on_func_entry// FALSE
> > > ---
> > >
> > > The cause of the issue is that the first instruction in the compile
> > > unit indicated by DW_AT_low_pc does not include NOPs.
> > > This issue exists in all gcc versions that support
> > > -fpatchable-function-entry option.
> > >
> > > I have reported it to the GCC community:
> > > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D98776
> >
> > Thanks for reporting it!
> >
> > > Currently arm64 and PA-RISC may enable fpatchable-function-entry opti=
on.
> > > The kernel compiled with clang does not have this issue.
> > >
> > > FIX:
> > >
> > > The result of my investigation is that this GCC issue will only cause
> > > the registration failure of the kretprobe event; Other functions of
> > > perf probe will not be affected, such as line probe, local variable
> > > probe, uprobe, etc.
> >
> > Hmm, it can affects the perf probe with local variables with ftrace
> > infrastructure.
> >
> > Now the debuginfo (dwarf_entrypc(DIE)) will return the actual symbol
> > address
> > +offset (offset depends on -fpatchable-function-entry). In this case,
> > if perf-probe put a probe on a function entry, it will be a bit shifted=
.
> > So, the probe always uses SW break instead of ftrace...Ah, ok...I recal=
led.
> > Before discussing it, I need to restart the kprobe on ftrace for arm64.
> > It has been discussed last year, but stopped.
>=20
> Is there any channel to learn about the progress of restart discussion?
> Very interested in this discussion.

Please check this thread. The patch is almost done.=20

https://lore.kernel.org/linux-arm-kernel/20191225172625.69811b3e@xhacker.de=
bian/T/#m7b4ef7df97c9ee533dc9d1836cf383676f32287f


>=20
> >
> > > A workaround solution is to traverse all the compilation units in
> > > debuginfo for the retprobe event and check whether the DW_AT_producer
> > > attribute valaue of each CUs contains substrings: "GNU" and
> > > "-fpatchable-function-entry". If these two substrings are included,
> > > then debuginfo will not be used to convert perf_probe_event.
> > > Instead, map will be used to query the probe function address.
> >
> > Hmm, actually, the return probe doesn't need debuginfo since it has no
> > information of the local variables when the function returns (of course
> > usually all local variables are gone at that point). In that case you c=
an just
> > stop using debuginfo for return probe.
> > (for the future work, it should support recording the contents of  "poi=
nter
> > passing" arguments at return probe, but currently it is not  supported =
yet. So
> > this must be done in another series.)
> >
> > e.g.
> > $ ./perf probe -D "eventfd_signal%return ctx->count"
> > Semantic error :You can't specify local variable for kretprobe.
> >
> > So, this should work.
> >
> > diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-even=
t.c
> > index 8eae2afff71a..10c88885dcd4 100644
> > --- a/tools/perf/util/probe-event.c
> > +++ b/tools/perf/util/probe-event.c
> > @@ -894,6 +894,9 @@ static int try_to_find_probe_trace_events(struct
> > perf_probe_event *pev,
> >  struct debuginfo *dinfo;
> >  int ntevs, ret =3D 0;
> >
> > +if (pev->point.retprobe)
> > +return 0;
> > +
> >  dinfo =3D open_debuginfo(pev->target, pev->nsi, !need_dwarf);
> >  if (!dinfo) {
> >  if (need_dwarf)
> >
> > Thank you,
> >
> >
>=20
> You are right. I once thought about a similar modification method,
> but it felt a little rough, so I added a check for the
> "-fpatchable-function-entry" option.
>=20
> I want a double confirmation, your opinion is to update this patch
> as shown above, right?

Yes, please make it so. I think the gcc command option checking
doesn't work correctly (false positive) after the issue is fixed.

Thank you,

>=20
> Jianlin
>=20
> > >
> > > -grecord-gcc-switches causes the command-line options used to invoke
> > > the compiler to be appended to the DW_AT_producer attribute in DWARF
> > > debugging information.It is enabled by default.
> > >
> > > A potential defect is that if -gno-record-gcc-switches option is
> > > enabled, the command-line options will not be recorded in debuginfo.
> > > This workaround solution will fail.
> > > Assume that this situation may not happen for kernel compilation.
> > >
> > > Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
> > > ---
> > >  tools/perf/util/probe-event.c | 60
> > > +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 60 insertions(+)
> > >
> > > diff --git a/tools/perf/util/probe-event.c
> > > b/tools/perf/util/probe-event.c index 8eae2afff71a..c0c1bcc59250
> > > 100644
> > > --- a/tools/perf/util/probe-event.c
> > > +++ b/tools/perf/util/probe-event.c
> > > @@ -885,6 +885,60 @@ static int post_process_probe_trace_events(struc=
t
> > perf_probe_event *pev,
> > >  return ret;
> > >  }
> > >
> > > +/*
> > > + * Perf failed to add kretprobe event with debuginfo of vmlinux whic=
h
> > > +is
> > > + * compiled by gcc with -fpatchable-function-entry option enabled.
> > > + * The same issue with kernel module. Refer to gcc issue: #98776
> > > + * This issue only cause the registration failure of kretprobe event=
,
> > > + * and it doesn't affect other perf probe functions.
> > > + * This workaround solution use map to query the probe function
> > > +address
> > > + * for retprobe event.
> > > + * A potential defect is that if -gno-record-gcc-switches option is
> > > +enabled,
> > > + * the command-line options will not be recorded in debuginfo. This
> > > +workaround
> > > + * solution will fail.
> > > + */
> > > +static bool retprobe_gcc_fpatchable_issue_workaround(struct debuginf=
o
> > *dbg,
> > > +struct perf_probe_event *pev)
> > > +{
> > > +Dwarf_Off off =3D 0, noff =3D 0;
> > > +size_t cuhl;
> > > +Dwarf_Die cu_die;
> > > +const char *producer =3D NULL;
> > > +Dwarf_Attribute attr;
> > > +
> > > +if (!pev->point.retprobe)
> > > +return false;
> > > +
> > > +/* Loop on CUs (Compilation Unit) */
> > > +while (!dwarf_nextcu(dbg->dbg, off, &noff, &cuhl, NULL, NULL, NULL))
> > {
> > > +/* Get the DIE(Debugging Information Entry) of this CU */
> > > +if (dwarf_offdie(dbg->dbg, off + cuhl, &cu_die) =3D=3D NULL) {
> > > +off =3D noff;
> > > +continue;
> > > +}
> > > +
> > > +/* Get information about the compiler that produced CUs */
> > > +if (dwarf_hasattr(&cu_die, DW_AT_producer)
> > > +&& dwarf_attr(&cu_die, DW_AT_producer, &attr)) {
> > > +producer =3D dwarf_formstring(&attr);
> > > +if (producer =3D=3D NULL) {
> > > +off =3D noff;
> > > +continue;
> > > +}
> > > +/* Check that CU is compiled by GCC with
> > > + * fpatchable-function-entry option enabled
> > > + */
> > > +if (strstr(producer, "GNU") &&
> > > +strstr(producer, "-fpatchable-function-entry"))
> > {
> > > +pr_debug("Workaround for gcc issue, find
> > probe function addresses from map.\n");
> > > +return true;
> > > +}
> > > +}
> > > +off =3D noff;
> > > +}
> > > +return false;
> > > +}
> > > +
> > >  /* Try to find perf_probe_event with debuginfo */  static int
> > > try_to_find_probe_trace_events(struct perf_probe_event *pev,
> > >    struct probe_trace_event **tevs)
> > @@ -902,6 +956,12 @@ static
> > > int try_to_find_probe_trace_events(struct perf_probe_event *pev,
> > >  return 0;
> > >  }
> > >
> > > +/* workaround for gcc #98776 issue */
> > > +if (retprobe_gcc_fpatchable_issue_workaround(dinfo, pev)
> > && !need_dwarf) {
> > > +debuginfo__delete(dinfo);
> > > +return 0;
> > > +}
> > > +
> > >  pr_debug("Try to find probe point from debuginfo.\n");
> > >  /* Searching trace events corresponding to a probe event */
> > >  ntevs =3D debuginfo__find_trace_events(dinfo, pev, tevs);
> > > --
> > > 2.25.1
> > >
> >
> >
> > --
> > Masami Hiramatsu <mhiramat@kernel.org>
> IMPORTANT NOTICE: The contents of this email and any attachments are conf=
idential and may also be privileged. If you are not the intended recipient,=
 please notify the sender immediately and do not disclose the contents to a=
ny other person, use it for any purpose, or store or copy the information i=
n any medium. Thank you.


--=20
Masami Hiramatsu <mhiramat@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210210094938.2f7b81dcf40b9dfc5fb3e61f%40kernel.org.
